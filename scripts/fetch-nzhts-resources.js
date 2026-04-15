#!/usr/bin/env node

const fs = require('fs/promises');
const path = require('path');
const https = require('https');

// Default settings can all be overridden with command-line args
const DEFAULTS = {
  baseUrl: 'https://nzhts.digital.health.nz/fhir',
  tagSystem: 'https://standards.digital.health.nz/ns/nzhts-usage-tags',
  tagCode: 'FHIR',
  outDir: 'input/vocabulary',
  count: 200,
  resourceTypes: ['ValueSet', 'CodeSystem', 'ConceptMap'],
};

function parseArgs(argv) {
  // Start with defaults, then replace specific values if the caller passed options.
  const options = { ...DEFAULTS };

  for (let i = 0; i < argv.length; i += 1) {
    const arg = argv[i];
    const next = argv[i + 1];

    if (arg === '--base-url' && next) {
      options.baseUrl = next;
      i += 1;
      continue;
    }
    if (arg === '--tag-system' && next) {
      options.tagSystem = next;
      i += 1;
      continue;
    }
    if (arg === '--tag-code' && next) {
      options.tagCode = next;
      i += 1;
      continue;
    }
    if (arg === '--out-dir' && next) {
      options.outDir = next;
      i += 1;
      continue;
    }
    if (arg === '--count' && next) {
      const count = Number.parseInt(next, 10);
      if (!Number.isNaN(count) && count > 0) {
        options.count = count;
      }
      i += 1;
      continue;
    }
    if (arg === '--resource-types' && next) {
      const resourceTypes = next
        .split(',')
        .map((value) => value.trim())
        .filter(Boolean);
      if (resourceTypes.length > 0) {
        options.resourceTypes = resourceTypes;
      }
      i += 1;
      continue;
    }
    if (arg === '--help' || arg === '-h') {
      printHelp();
      process.exit(0);
    }

    throw new Error(`Unknown argument: ${arg}`);
  }

  return options;
}

function printHelp() {
  console.log('Fetch NZHTS-tagged FHIR resources into input/vocabulary');
  console.log('');
  console.log('Usage:');
  console.log('  node scripts/fetch-nzhts-resources.js [options]');
  console.log('');
  console.log('Options:');
  console.log('  --base-url <url>       FHIR base URL');
  console.log('  --tag-system <system>  Tag system URL');
  console.log('  --tag-code <code>      Tag code');
  console.log('  --out-dir <path>       Output directory');
  console.log('  --count <number>       Search page size (default 200)');
  console.log('  --resource-types <csv> Resource types to search (default ValueSet,CodeSystem,ConceptMap)');
  console.log('  --help                 Show this help');
}

function toAbsoluteUrl(baseUrl, maybeRelativeUrl) {
  // FHIR pagination links may be absolute or relative.
  // This normalizes either form into a full URL we can request.
  if (!maybeRelativeUrl) {
    return null;
  }

  try {
    return new URL(maybeRelativeUrl).toString();
  } catch (_err) {
    return new URL(maybeRelativeUrl, `${baseUrl.replace(/\/$/, '')}/`).toString();
  }
}

function encodeTag(system, code) {
  // FHIR _tag syntax is "system|code", URL-encoded for query use.
  return encodeURIComponent(`${system}|${code}`);
}

function buildSearchUrl(options, resourceType) {
  const base = options.baseUrl.replace(/\/$/, '');
  return `${base}/${encodeURIComponent(resourceType)}/?_tag=${encodeTag(options.tagSystem, options.tagCode)}&_count=${options.count}`;
}

function sanitizeFilePart(value) {
  // Keep filenames safe across platforms by replacing unsupported characters.
  return String(value)
    .trim()
    .replace(/[^A-Za-z0-9._-]/g, '_')
    .replace(/_+/g, '_') || 'unknown';
}

function fileNameFor(resourceType, id) {
  // Naming convention required: "<id>-<resourceType>.json".
  const safeId = sanitizeFilePart(id || 'unknown-id');
  const safeType = sanitizeFilePart(resourceType || 'Unknown');
  return `${safeId}-${safeType}.json`;
}

function httpGetJson(url) {
  // Fallback HTTP client for Node environments (v16 or earlier) without global fetch.
  return new Promise((resolve, reject) => {
    const req = https.get(url, { headers: { Accept: 'application/fhir+json, application/json' } }, (res) => {
      const chunks = [];
      res.on('data', (chunk) => chunks.push(chunk));
      res.on('end', () => {
        const body = Buffer.concat(chunks).toString('utf8');
        if (res.statusCode < 200 || res.statusCode >= 300) {
          reject(new Error(`GET ${url} failed: HTTP ${res.statusCode}\n${body}`));
          return;
        }

        try {
          resolve(JSON.parse(body));
        } catch (err) {
          reject(new Error(`Invalid JSON from ${url}: ${err.message}`));
        }
      });
    });

    req.on('error', reject);
  });
}

async function fetchJson(url) {
  // Prefer global fetch when available; otherwise use the HTTPS fallback above.
  if (typeof fetch === 'function') {
    const response = await fetch(url, {
      headers: { Accept: 'application/fhir+json, application/json' },
    });
    const text = await response.text();

    if (!response.ok) {
      throw new Error(`GET ${url} failed: HTTP ${response.status} ${response.statusText}\n${text}`);
    }

    return JSON.parse(text);
  }

  return httpGetJson(url);
}

async function fetchSearchEntriesForType(options, resourceType) {
  // Collect all Bundle.entry rows across all search pages.
  // Stop when there is no "next" link.
  const entries = [];
  const visited = new Set();
  let nextUrl = buildSearchUrl(options, resourceType);
  let page = 0;

  while (nextUrl) {
    // Guard against accidental infinite loops if the server repeats a page URL.
    if (visited.has(nextUrl)) {
      throw new Error(`Pagination loop detected at ${nextUrl}`);
    }
    visited.add(nextUrl);

    page += 1;
    console.log(`Fetching ${resourceType} search page ${page}: ${nextUrl}`);

    const bundle = await fetchJson(nextUrl);
    if (bundle.resourceType !== 'Bundle') {
      throw new Error(`Expected Bundle from search, got ${bundle.resourceType || 'unknown'}`);
    }

    const pageEntries = Array.isArray(bundle.entry) ? bundle.entry : [];
    entries.push(...pageEntries);

    const nextLink = Array.isArray(bundle.link)
      ? bundle.link.find((link) => link && link.relation === 'next' && link.url)
      : null;

    nextUrl = nextLink ? toAbsoluteUrl(options.baseUrl, nextLink.url) : null;
  }

  return entries;
}

function extractReferences(entry) {
  // Pull just the resource locator we need for re-fetching by type/id.
  const resource = entry && entry.resource;
  if (resource && resource.resourceType && resource.id) {
    return { resourceType: resource.resourceType, id: resource.id };
  }

  return null;
}

async function saveResource(options, resourceType, id) {
  // Download one resource from /{resourceType}/{id} and save
  const base = options.baseUrl.replace(/\/$/, '');
  const url = `${base}/${encodeURIComponent(resourceType)}/${encodeURIComponent(id)}`;
  const resource = await fetchJson(url);

  const outputName = fileNameFor(resourceType, id);
  const outputPath = path.resolve(options.outDir, outputName);

  await fs.writeFile(outputPath, `${JSON.stringify(resource, null, 2)}\n`, 'utf8');

  return outputPath;
}

async function clearOutputJsonFiles(outDir) {
  // Source of truth is the server. Before download, remove old JSON artifacts
  // only from the vocabulary directory
  const resolvedOutDir = path.resolve(outDir);
  const dirEntries = await fs.readdir(resolvedOutDir, { withFileTypes: true });
  let deleted = 0;

  for (const entry of dirEntries) {
    if (!entry.isFile()) {
      continue;
    }

    if (!entry.name.toLowerCase().endsWith('.json')) {
      continue;
    }

    const filePath = path.join(resolvedOutDir, entry.name);
    await fs.unlink(filePath);
    deleted += 1;
  }

  return deleted;
}

async function main() {
  // High-level flow:
  // 1) Parse options
  // 2) Search by tag for each configured resource type (with pagination)
  // 3) De-duplicate by resourceType/id
  // 4) Download each resource and save to input/vocabulary
  const options = parseArgs(process.argv.slice(2));
  await fs.mkdir(path.resolve(options.outDir), { recursive: true });
  const deletedJsonCount = await clearOutputJsonFiles(options.outDir);
  console.log(`Cleared ${deletedJsonCount} existing .json file(s) from ${path.resolve(options.outDir)}.`);

  const allEntries = [];
  for (const resourceType of options.resourceTypes) {
    const entries = await fetchSearchEntriesForType(options, resourceType);
    console.log(`${resourceType} search returned ${entries.length} entries.`);
    allEntries.push(...entries);
  }
  console.log(`Combined search returned ${allEntries.length} entries.`);

  const uniqueRefs = new Map();
  for (const entry of allEntries) {
    const ref = extractReferences(entry);
    if (!ref) {
      continue;
    }

    const key = `${ref.resourceType}/${ref.id}`;
    // If the same resource appears more than once, keep only one copy.
    if (!uniqueRefs.has(key)) {
      uniqueRefs.set(key, ref);
    }
  }

  console.log(`Downloading ${uniqueRefs.size} unique resources...`);

  const countsByType = new Map();
  let saved = 0;
  for (const ref of uniqueRefs.values()) {
    const outputPath = await saveResource(options, ref.resourceType, ref.id);
    saved += 1;

    countsByType.set(ref.resourceType, (countsByType.get(ref.resourceType) || 0) + 1);
    console.log(`[${saved}/${uniqueRefs.size}] Saved ${ref.resourceType}/${ref.id} -> ${outputPath}`);
  }

  console.log('Done. Summary by resource type:');
  for (const [resourceType, count] of [...countsByType.entries()].sort((a, b) => a[0].localeCompare(b[0]))) {
    console.log(`  ${resourceType}: ${count}`);
  }
}

main().catch((err) => {
  console.error(err.message || err);
  process.exit(1);
});
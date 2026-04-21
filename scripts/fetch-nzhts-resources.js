#!/usr/bin/env node

const fs = require('fs/promises');
const path = require('path');
const https = require('https');

const TEMP_DIR = 'temp/terminology';

// Default settings can all be overridden with command-line args
const DEFAULTS = {
  baseUrl: 'https://nzhts.digital.health.nz/fhir',
  tagSystem: 'https://standards.digital.health.nz/ns/nzhts-usage-tags',
  tagCode: 'NZBase',
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
  console.log('Fetch tagged FHIR resources into input/vocabulary');
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

function resourceTypeFromFileName(fileName, knownTypes) {
  // Filenames follow the convention "<id>-<ResourceType>.json".
  // Match against known resource types to avoid false positives from hyphens in IDs.
  const base = fileName.slice(0, -'.json'.length);
  for (const type of knownTypes) {
    if (base.endsWith(`-${type}`)) {
      return type;
    }
  }
  return null;
}

function sortKeysRecursive(value) {
  // Recursively sort object keys so JSON.stringify produces a stable string
  // regardless of the order the server returns properties.
  if (Array.isArray(value)) {
    return value.map(sortKeysRecursive);
  }
  if (value !== null && typeof value === 'object') {
    return Object.fromEntries(
      Object.keys(value)
        .sort()
        .map((k) => [k, sortKeysRecursive(value[k])])
    );
  }
  return value;
}

function normalizeJson(raw) {
  // Parse and re-stringify with sorted keys so two semantically identical
  // responses compare as equal even if key order or whitespace differs.
  try {
    return JSON.stringify(sortKeysRecursive(JSON.parse(raw)), null, 2);
  } catch {
    return raw.trim();
  }
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

async function readJsonFilesFromDir(dir) {
  // Read all JSON files in dir, returning a Map of filename -> normalized content.
  // Returns an empty Map if the directory doesn't exist yet.
  const resolvedDir = path.resolve(dir);
  let dirEntries;
  try {
    dirEntries = await fs.readdir(resolvedDir, { withFileTypes: true });
  } catch (err) {
    if (err.code === 'ENOENT') {
      return new Map();
    }
    throw err;
  }

  const files = new Map();
  for (const entry of dirEntries) {
    if (!entry.isFile() || !entry.name.toLowerCase().endsWith('.json')) {
      continue;
    }
    const raw = await fs.readFile(path.join(resolvedDir, entry.name), 'utf8');
    files.set(entry.name, normalizeJson(raw));
  }
  return files;
}

async function clearDir(dir) {
  // Delete all JSON files in dir (used to clean up the temp directory).
  const resolvedDir = path.resolve(dir);
  let dirEntries;
  try {
    dirEntries = await fs.readdir(resolvedDir, { withFileTypes: true });
  } catch (err) {
    if (err.code === 'ENOENT') return;
    throw err;
  }
  for (const entry of dirEntries) {
    if (entry.isFile() && entry.name.toLowerCase().endsWith('.json')) {
      await fs.unlink(path.join(resolvedDir, entry.name));
    }
  }
}

async function saveResource(options, resourceType, id, outDir) {
  // Download one resource from /{resourceType}/{id} and save to outDir.
  const base = options.baseUrl.replace(/\/$/, '');
  const url = `${base}/${encodeURIComponent(resourceType)}/${encodeURIComponent(id)}`;
  const resource = await fetchJson(url);

  const outputName = fileNameFor(resourceType, id);
  const outputPath = path.resolve(outDir, outputName);

  await fs.writeFile(outputPath, `${JSON.stringify(resource, null, 2)}\n`, 'utf8');

  return outputPath;
}

function compareFileSets(oldFiles, newFiles) {
  // Returns lists of filenames in each change category.
  const added = [];
  const removed = [];
  const changed = [];
  const unchanged = [];

  for (const [name, newContent] of newFiles) {
    if (!oldFiles.has(name)) {
      added.push(name);
    } else if (oldFiles.get(name) === newContent) {
      unchanged.push(name);
    } else {
      changed.push(name);
    }
  }

  for (const name of oldFiles.keys()) {
    if (!newFiles.has(name)) {
      removed.push(name);
    }
  }

  return { added, removed, changed, unchanged };
}

function computeLcs(oldLines, newLines) {
  // Standard LCS DP table, then backtrack to produce an edit sequence.
  const m = oldLines.length;
  const n = newLines.length;
  const dp = Array.from({ length: m + 1 }, () => new Int32Array(n + 1));

  for (let i = 1; i <= m; i++) {
    for (let j = 1; j <= n; j++) {
      dp[i][j] = oldLines[i - 1] === newLines[j - 1]
        ? dp[i - 1][j - 1] + 1
        : Math.max(dp[i - 1][j], dp[i][j - 1]);
    }
  }

  const edits = [];
  let i = m;
  let j = n;
  while (i > 0 || j > 0) {
    if (i > 0 && j > 0 && oldLines[i - 1] === newLines[j - 1]) {
      edits.push({ type: 'keep', line: oldLines[i - 1] });
      i -= 1;
      j -= 1;
    } else if (j > 0 && (i === 0 || dp[i][j - 1] >= dp[i - 1][j])) {
      edits.push({ type: 'add', line: newLines[j - 1] });
      j -= 1;
    } else {
      edits.push({ type: 'remove', line: oldLines[i - 1] });
      i -= 1;
    }
  }

  return edits.reverse();
}

function formatDiff(oldContent, newContent, contextLines = 3) {
  const edits = computeLcs(oldContent.split('\n'), newContent.split('\n'));

  // Mark which edit positions should be shown (changed lines + surrounding context).
  const show = new Array(edits.length).fill(false);
  for (let i = 0; i < edits.length; i++) {
    if (edits[i].type !== 'keep') {
      const from = Math.max(0, i - contextLines);
      const to = Math.min(edits.length - 1, i + contextLines);
      for (let k = from; k <= to; k++) {
        show[k] = true;
      }
    }
  }

  const output = [];
  let inGap = false;
  for (let i = 0; i < edits.length; i++) {
    if (!show[i]) {
      if (!inGap) {
        output.push('    ...');
        inGap = true;
      }
      continue;
    }
    inGap = false;
    const { type, line } = edits[i];
    const prefix = type === 'add' ? '+   ' : type === 'remove' ? '-   ' : '    ';
    output.push(`${prefix}${line}`);
  }

  return output.join('\n');
}

function countByType(fileNames, knownTypes) {
  // Count filenames by the resource type encoded in the filename suffix.
  const counts = new Map();
  for (const name of fileNames) {
    const type = resourceTypeFromFileName(name, knownTypes) || 'other';
    counts.set(type, (counts.get(type) || 0) + 1);
  }
  return counts;
}

async function applyDownload(outDir, tempDir, oldFiles, newFiles) {
  // Move all new files from tempDir into outDir, then delete any old files
  // that are no longer present in the new set.
  const resolvedOut = path.resolve(outDir);
  const resolvedTemp = path.resolve(tempDir);

  for (const name of newFiles.keys()) {
    const tempPath = path.join(resolvedTemp, name);
    const outPath = path.join(resolvedOut, name);
    try {
      await fs.rename(tempPath, outPath);
    } catch {
      // rename fails across filesystem boundaries — fall back to copy+delete
      await fs.copyFile(tempPath, outPath);
      await fs.unlink(tempPath);
    }
  }

  for (const name of oldFiles.keys()) {
    if (!newFiles.has(name)) {
      await fs.unlink(path.join(resolvedOut, name));
    }
  }
}

async function main() {
  // High-level flow:
  // 1) Parse options
  // 2) Read existing vocabulary files into memory
  // 3) Search by tag for each configured resource type (with pagination)
  // 4) De-duplicate by resourceType/id
  // 5) Download each resource to a temp directory
  // 6) Compare temp files to existing files
  // 7) Move temp files into outDir, delete any files removed from server
  // 8) Print diff summary
  const options = parseArgs(process.argv.slice(2));

  await fs.mkdir(path.resolve(options.outDir), { recursive: true });
  await fs.mkdir(path.resolve(TEMP_DIR), { recursive: true });
  await clearDir(TEMP_DIR);

  console.log(`Reading existing files from ${path.resolve(options.outDir)}...`);
  const oldFiles = await readJsonFilesFromDir(options.outDir);
  console.log(`Found ${oldFiles.size} existing .json file(s).`);

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

  console.log(`Downloading ${uniqueRefs.size} unique resources to ${path.resolve(TEMP_DIR)}...`);

  let downloaded = 0;
  for (const ref of uniqueRefs.values()) {
    const outputPath = await saveResource(options, ref.resourceType, ref.id, TEMP_DIR);
    downloaded += 1;
    console.log(`[${downloaded}/${uniqueRefs.size}] Saved ${ref.resourceType}/${ref.id} -> ${outputPath}`);
  }

  const newFiles = await readJsonFilesFromDir(TEMP_DIR);
  const diff = compareFileSets(oldFiles, newFiles);

  await applyDownload(options.outDir, TEMP_DIR, oldFiles, newFiles);

  const { added, removed, changed, unchanged } = diff;
  const knownTypes = options.resourceTypes;

  console.log('\nSummary:');

  if (removed.length > 0) {
    console.log('  Removed (no longer on server):');
    for (const [type, n] of [...countByType(removed, knownTypes).entries()].sort()) {
      console.log(`    ${type}: ${n}`);
    }
    for (const name of [...removed].sort()) {
      console.log(`    - ${name}`);
    }
  }

  if (added.length > 0) {
    console.log('  Added (new on server):');
    for (const [type, n] of [...countByType(added, knownTypes).entries()].sort()) {
      console.log(`    ${type}: ${n}`);
    }
    for (const name of [...added].sort()) {
      console.log(`    + ${name}`);
    }
  }

  if (changed.length > 0) {
    console.log('  Changed:');
    for (const [type, n] of [...countByType(changed, knownTypes).entries()].sort()) {
      console.log(`    ${type}: ${n}`);
    }
    for (const name of [...changed].sort()) {
      console.log(`\n  Diff: ${name}`);
      console.log(formatDiff(oldFiles.get(name), newFiles.get(name), 0));
    }
  }

  console.log(`  Unchanged: ${unchanged.length}`);

  if (removed.length === 0 && added.length === 0 && changed.length === 0) {
    console.log('  No changes detected.');
  } else {
    const netChange = added.length - removed.length;
    const netLabel = netChange > 0 ? `+${netChange}` : `${netChange}`;
    console.log(`  Net file change: ${netLabel} (${removed.length} removed, ${added.length} added, ${changed.length} changed)`);
  }
}

main().catch((err) => {
  console.error(err.message || err);
  if (err.cause) {
    console.error('Caused by:', err.cause);
  }
  process.exit(1);
});

# Scripts

## fetch-nzhts-resources.js

NZ Base masters terminology in NZHTS. All authoring/updates to terminology should be performed there. Before building the IG, run this script to pull down the current terminology from NZHTS into `input/vocabulary`. Any terminology changes made in NZHTS since the last run will be reflected in the build.

```bash
node scripts/fetch-nzhts-resources.js
```

The script searches NZHTS for resources tagged with `FHIR`, downloads each `ValueSet`, `CodeSystem`, and `ConceptMap` etc., and lists a summary of what changed compared to the previous run.

### Options

| Option | Default | Description |
|---|---|---|
| `--base-url <url>` | `https://nzhts.digital.health.nz/fhir` | FHIR base URL |
| `--tag-system <system>` | `https://standards.digital.health.nz/ns/nzhts-usage-tags` | Tag system URL |
| `--tag-code <code>` | `FHIR` | Tag code |
| `--out-dir <path>` | `input/vocabulary` | Output directory |
| `--count <number>` | `200` | Search page size |
| `--resource-types <csv>` | `ValueSet,CodeSystem,ConceptMap` | Resource types to fetch |

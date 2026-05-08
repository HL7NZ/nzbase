# Scripts

## fetch-nzhts-resources.js

NZ Base masters terminology in NZHTS. All authoring/updates to terminology should be performed there. Before building the IG, if changes have been made to any terminology, run this script to pull down the current terminology artefacts from NZHTS into `input/vocabulary`. 

```bash
node scripts/fetch-nzhts-resources.js
```

The script searches NZHTS for resources tagged with `NZBase` (with a `system` value of `https://standards.digital.health.nz/ns/nzhts-usage-tags`), downloads each `ValueSet`, `CodeSystem`, and `ConceptMap` etc., and lists a summary of what changed compared to the previous run.

The script can also be used for secured endpoints such as the NZHTS authoring environment, by providing an OAuth 2.0 bearer token via `TERM_SERVER_BEARER_TOKEN`. The token is sent as an `Authorization: Bearer ...` header on all FHIR requests. You can also pass a token directly with `--bearer-token <token>`, but variables are preferred because command-line arguments are more likely to be retained in shell history.

E.g. for Linux, macOS, Git Bash, or WSL:

```bash
TERM_SERVER_BEARER_TOKEN="<token>" node scripts/fetch-nzhts-resources.js --base-url https://authoring.nzhts.digital.health.nz/fhir
```

PowerShell:

```powershell
$env:TERM_SERVER_BEARER_TOKEN = "<token>"
node scripts/fetch-nzhts-resources.js --base-url https://authoring.nzhts.digital.health.nz/fhir
```

Windows cmd:

```cmd
set TERM_SERVER_BEARER_TOKEN=<token>
node scripts/fetch-nzhts-resources.js --base-url https://authoring.nzhts.digital.health.nz/fhir
```


### Options

| Option | Default | Description |
|---|---|---|
| `--base-url <url>` | `https://nzhts.digital.health.nz/fhir` | FHIR base URL |
| `--tag-system <system>` | `https://standards.digital.health.nz/ns/nzhts-usage-tags` | Tag system URL |
| `--tag-code <code>` | `NZBase` | Tag code |
| `--out-dir <path>` | `input/vocabulary` | Output directory |
| `--bearer-token <token>` | `TERM_SERVER_BEARER_TOKEN` | Bearer token |
| `--count <number>` | `200` | Search page size |
| `--resource-types <csv>` | `ValueSet,CodeSystem,ConceptMap` | Resource types to fetch |

# NZBase

This repo contains the source for the base FHIR Implementation Guide (IG) for New Zealand and contains the most common extensions that most NZ FHIR Implementations will need.

The current continuous integration (CI) version (the draft work in progress candidate for the next version) can be viewed at: https://build.fhir.org/ig/HL7NZ/nzbase/branches/master/

The current published version can be found at: https://fhir.org.nz/ig/base/

## IG Development

This repository uses the official HL7 IG Publisher helper scripts.

### Prerequisites

To work on this IG locally you should install:

1. Java
   - Install a recent Java runtime and make sure `java` is on your `PATH`.
2. Node.js and npm
   - SUSHI is distributed through npm.
3. FSH/SUSHI
   - Install SUSHI globally
4. Jekyll (website builder)
   - Install Ruby and Bundler, then install Jekyll

```bash
npm install -g fsh-sushi
gem install jekyll
```

You can verify the installation with:

```bash
sushi --help
jekyll --version
```

### Build scripts

The `updatePublisher` will download the latest official release of the IG Publisher.

```bash
./_updatePublisher.sh
```

Build the IG (runs SUSHI):

```bash
./_genonce.sh
```

Open the menu-driven helper (additional build options):

```bash
./_build.sh
```

### Terminology from NZHTS

NZ Base masters terminology in NZHTS. All authoring/updates to terminology should be performed there. 

Before building the IG, run  `scripts/fetch-nzhts-resources.js` to pull down the current terminology from NZHTS into `input/vocabulary`. 

```bash
node scripts/fetch-nzhts-resources.js
```
For more detail see the [Scripts README.md](/scripts).

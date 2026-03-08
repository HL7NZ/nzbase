### ValueSets

These are ValueSets that have been defined in this guide for coded elements.

Each ValueSet resource has a globally unique url (the [Canonical](https://hl7.org/fhir/R4/references.html#canonical) url) that is used to unambiguously identify it.
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure
to support this is not yet in place. There's a [specific note](https://hl7.org/fhir/R4/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](https://hl7.org/fhir/R4/terminology-module.html) has much more detail on the use of Terminology in FHIR.

{% sql {
  "query": "select coalesce(Title, Name, Id) as Name, Description, Web, Url from Resources where Type = 'ValueSet' and Url is not null order by coalesce(Title, Name, Id)",
  "class": "table table-bordered table-condensed",
  "columns": [
    { "source": "Name", "title": "ValueSet", "type": "link", "target": "Web" },
    { "source": "Description", "title": "Purpose", "type": "markdown" },
    { "source": "Url", "title": "Canonical url", "type": "markdown" }
  ]
} %}

### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](https://hl7.org/fhir/R4/terminology-module.html) has much more detail on the use of Terminology in FHIR

{% sql {
  "query": "select coalesce(Title, Name, Id) as Name, Description, Web, Url from Resources where Type = 'CodeSystem' and Url is not null order by coalesce(Title, Name, Id)",
  "class": "table table-bordered table-condensed",
  "columns": [
    { "source": "Name", "title": "CodeSystem", "type": "link", "target": "Web" },
    { "source": "Description", "title": "Purpose", "type": "markdown" },
    { "source": "Url", "title": "Canonical url", "type": "markdown" }
  ]
} %}

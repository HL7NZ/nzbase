Extension: Citizenship
Id: citizenship
Description: "New Zealand citizenship"


* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1

// definitions of sub-extensions
* extension[status].url = "status" (exactly)
* extension[status] ^definition = "The citizenship status - CIT, NCIT, UNK"
* extension[status] ^short = "The citizenship status - CIT, NCIT, UNK"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/citizenship-status (preferred)

* extension[source].url = "source" (exactly)
* extension[source] ^definition = "Where the information about the status came from"
* extension[source] ^short = "Where the information about the status came from"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/info-source (preferred)

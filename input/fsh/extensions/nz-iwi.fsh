Extension: Nz_iwi
Id: nz-iwi
Description: "Persons Iwi affiliation"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-iwi"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^version = "1.0.0"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from $iwi-vs (preferred)
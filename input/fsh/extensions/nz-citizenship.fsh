Extension: Nz_citizenship
Id: nz-citizenship
Title: "NZ Citizenship"
Description: "New Zealand citizenship"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"

* ^version = "1.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1

* extension[status] ^definition = "No description"
* extension[status].value[x] only CodeableConcept
//* extension[status].valueCodeableConcept 0..1
* extension[status].valueCodeableConcept from $citizenship-status-vs (preferred)

* extension[source] ^definition = "No description"
* extension[source].value[x] only CodeableConcept
//* extension[source].valueCodeableConcept 0..1
* extension[source].valueCodeableConcept from $information-source-vs (preferred)
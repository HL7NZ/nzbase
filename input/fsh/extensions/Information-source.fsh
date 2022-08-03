Extension: Information_source
Id: information-source
Title: "Information Source"
Description: "The official source of information held about a patient."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"

* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"

* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work

* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ

* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[+].type = #element
* ^context[=].expression = "Patient.name"

* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"

* ^context[+].type = #element
* ^context[=].expression = "Patient.deceasedDateTime"

* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $information-source-vs (preferred)
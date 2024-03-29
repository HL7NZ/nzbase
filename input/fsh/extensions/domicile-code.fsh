Extension: Domicile_code
Id: domicile-code
Title: "NZ Domicile Code"
Description: "NZ Domicile Code. Derived from a patient's primary physical, home address."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"

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
* ^context[=].expression = "Patient"

* ^context[+].type = #element
* ^context[=].expression = "Address"

* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $domicile-code-vs (preferred)
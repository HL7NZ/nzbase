Extension: Domicile_code
Id: domicile-code
Title: "NZ Domicile Code"
Description: "NZ Domicile Code. Derived from a patient's primary physical, home address."
* ^version = "0.1.0"
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
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/domicile-code (preferred)
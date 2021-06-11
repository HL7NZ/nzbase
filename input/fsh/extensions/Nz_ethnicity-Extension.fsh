Extension: Nz_ethnicity
Id: nz-ethnicity
Title: "NZ Ethnicity"
Description: "The ethnicity of the patient. Uses level 4 codes (most detailed)."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"

* ^version = "0.1.0"
* ^status = #draft
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[1].type = #element
* ^context[1].expression = "Practitioner"
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/ethnic-group-level-4-code (preferred)
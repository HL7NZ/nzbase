
//note argonaut extension: https://www.fhir.org/guides/argonaut/r2/StructureDefinition-argo-birthsex.html
//has a required binding

Extension: Sex_at_birth
Id: sex-at-birth
Title: "Sex At Birth"
Description: "A person’s sex at the time of their birth (considered to be immutable)."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"

* ^version = "0.2.0"
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
* valueCodeableConcept from AdministrativeGender (required)
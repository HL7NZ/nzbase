Extension: SexAtBirth
Id: sex-at-birth
Description: "The persons sex when born. Is considered to be immutable "

* ^context.type = #element
* ^context.expression = "Patient"        

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/administrative-gender (required)
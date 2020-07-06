Extension: Patient_iwi
Id: patient-iwi
Description: "Persons Iwi affiliation"

* ^context.type = #element
* ^context.expression = "Patient"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/iwi (preferred)
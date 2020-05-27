Extension: Informationsource
Id: informationsource
Description: "The source of the information. Used paricularly in the NHI. Note this not the person but rather than it came from a passport for example"

* ^context.type = #element
* ^context.expression = "Patient.birthDate"    

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http://standards.digital.health.nz/vs/infosource (preferred)
Extension: MaoriDescent
Id: maori-descent-code
Description: "Code indicting whether the person is of Māori descent"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/maori-descent"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/maori-descent (preferred)

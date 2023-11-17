Extension: MaoriDescent
Id: maori-descent
Description: "Code indicating whether the person is of Māori descent"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/maori-descent"
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/maori-descent (preferred)


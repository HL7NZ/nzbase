Instance: location-alias-type
InstanceOf: Location
Description: "A location with an alias type against the alias."
Usage: #example

* name = "Daves health centre"
* alias = "Best health"

* alias.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias.extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/alias-type-code#short  "Short"

Alias: $csInfoSource = https://standards.digital.health.nz/ns/information-source-code

Instance: patient-information-source
InstanceOf: Patient
Description: "Example of information source"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* name.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name.extension[=].valueCodeableConcept = $csInfoSource#BRCT "Birth Certificate"

* birthDate = "1998-01-01"
* birthDate.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension[=].valueCodeableConcept = $csInfoSource#PPRT "Passport"

* gender = #male
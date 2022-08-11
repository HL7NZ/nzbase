Alias: $csInfoSource = https://standards.digital.health.nz/ns/information-source-code

Instance: patient-deceased-information-source
InstanceOf: NzPatient
Description: "Example of information source"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"

* deceasedDateTime = "1998-01-01"
* deceasedDateTime.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* deceasedDateTime.extension[=].valueCodeableConcept = $csInfoSource#PPRT "Passport"

* gender = #male
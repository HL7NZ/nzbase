

Alias: $csInfoSource = https://standards.digital.health.nz/ns/information-source-code

Instance: patient-nz-residenct-status
InstanceOf: Patient
Description: "Example of residency status"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency-status"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept =  $nz-residency-status-cs#yes "Permanent Resident"

* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept = $csInfoSource#BREG "Birth Register"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

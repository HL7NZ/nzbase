
Instance: patient-dhb
InstanceOf: Patient
Description: "Patient1"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept = $dhb-code-cs#G00026-A "Northland"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

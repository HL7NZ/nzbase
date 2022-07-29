
Instance: patient-messaging-address
InstanceOf: Patient
Description: "Patient1"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"
* extension[=].extension[+].url = "provider"
* extension[=].extension[=].valueString = "MedicalObjects"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "valueMO"


* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

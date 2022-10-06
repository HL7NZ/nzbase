Alias: $csDomCode = https://standards.digital.health.nz/ns/domicile-code

Instance: patient-domicile-code
InstanceOf: Patient
Description: "Example of Domicile code"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* extension[=].valueCodeableConcept = $csDomCode#0125 "Waipu"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male
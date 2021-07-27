


Instance: patient-pho
InstanceOf: Patient
Description: "Example of PHO"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/pho"
* extension[=].valueCodeableConcept = $pho-code-cs#G05533-K "Procare Networks Limited"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male


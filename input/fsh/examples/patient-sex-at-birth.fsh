
Instance: patient-sex-at-birth
InstanceOf: Patient
Description: "Example of a Patient with the sex at birth extension"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female 

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

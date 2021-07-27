Alias: $csEthnicity = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: patient-ethnicity
InstanceOf: Patient
Description: "Example of ethnicity"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = $csEthnicity#10000 "European NFD"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = $csEthnicity#12111 "Celtic"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

Alias: $csEthnicity = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: patient-nz-ethnicity
InstanceOf: Patient
Description: "Example of ethnicity"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = $csEthnicity#21111 "Maori"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = $csEthnicity#12116 "Irish"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

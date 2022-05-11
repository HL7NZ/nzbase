Alias: $scope = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code

Instance: practitioner-scope-of-practice
InstanceOf: Practitioner
Description: "Example of scope of practice"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS

* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification[=].extension[=].extension[+].url = "code"
* qualification[=].extension[=].extension[=].valueCodeableConcept = $scope#CHIR "Chiropractor"

* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2020-01-01"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2020-12-31"




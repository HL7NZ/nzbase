
Instance: practitioner-condition-on-practice
InstanceOf: Practitioner
Description: "Example of Condition on practice"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS

* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification[=].extension[=].extension[+].url = "description"
* qualification[=].extension[=].extension[=].valueString = "Must be supervised"

* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2020-01-01"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2020-12-31"




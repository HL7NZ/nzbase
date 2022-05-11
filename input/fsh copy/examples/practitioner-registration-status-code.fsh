Alias: $csRegStatus = https://standards.digital.health.nz/ns/practitioner-registration-status-code

Instance: practitioner-registration-status-code
InstanceOf: Practitioner
Description: "Example of registration status"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS

* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification[=].extension[=].extension[+].url = "status"
* qualification[=].extension[=].extension[=].valueCodeableConcept = $csRegStatus#current "A provider who holds or is deemed to hold a current practising certificate."

* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"




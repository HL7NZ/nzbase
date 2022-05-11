Alias: $csAA = https://standards.digital.health.nz/ns/practitioner-additional-authorisation-code

Instance: practitioner-additional-authorisation
InstanceOf: Practitioner
Description: "Additional authorisation example - to give immunizations in 2021"
Usage: #example


* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male




* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS

* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/additional-authorisation"

* qualification[=].extension[=].extension[+].url = "code"
* qualification[=].extension[=].extension[=].valueCodeableConcept = $csAA#IMMU "Immunisation"

* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2022-01-01"

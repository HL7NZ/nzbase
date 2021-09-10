
Instance: practitioner-death-date
InstanceOf: Practitioner
Description: "Example of Practitioner with detah date"
Usage: #example

* name.family = "Welby"
* name.given = "Marcus"
* name.text = "Marcus Welby"
* birthDate = "1998-01-01"
* gender = #male

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/death-date"
* extension[=].extension[+].url = "date"
* extension[=].extension[=].valueDateTime = "2021-01-01"
* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept = $information-source-cs#DREG


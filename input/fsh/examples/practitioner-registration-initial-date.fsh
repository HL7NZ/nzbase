
Instance: practitioner-registration-initial-date
InstanceOf: Practitioner
Description: "Example of Initial date of registration"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS

* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification[=].extension[=].valueDate = "2009-10-02"




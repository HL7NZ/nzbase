Instance: practitioner-educational-qualification
InstanceOf: Practitioner
Description: "Example of educational qualification"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male



/** fullname 0..1 and
    shortname 0..1 and
    year 0..1 and
    institution 0..1 and
    city 0..1 and
    country 0..1 */
* qualification[+].code = http://terminology.hl7.org/CodeSystem/v2-0360#BS



* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"

* qualification[=].extension[=].extension[+].url = "fullname"
* qualification[=].extension[=].extension[=].valueString = "How to make a deal so that only you win and the other guy (the loser) loses everything"

* qualification[=].extension[=].extension[+].url = "shortname"
* qualification[=].extension[=].extension[=].valueString = "Deal making"

* qualification[=].extension[=].extension[+].url = "year"
* qualification[=].extension[=].extension[=].valueDate = "2010"

* qualification[=].extension[=].extension[+].url = "institution"
* qualification[=].extension[=].extension[=].valueString = "Trump University"

* qualification[=].extension[=].extension[+].url = "city"
* qualification[=].extension[=].extension[=].valueString = "New York"

* qualification[=].extension[=].extension[+].url = "country"
* qualification[=].extension[=].extension[=].valueString = "US"






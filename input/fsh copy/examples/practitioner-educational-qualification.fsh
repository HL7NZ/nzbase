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
* qualification[=].extension[=].extension[=].valueString = "Fellow of the Royal Australian and New Zealand College of Psychiatrists qualification"

* qualification[=].extension[=].extension[+].url = "shortname"
* qualification[=].extension[=].extension[=].valueString = "Psychiatrist fellow"

* qualification[=].extension[=].extension[+].url = "year"
* qualification[=].extension[=].extension[=].valueDate = "1995"

* qualification[=].extension[=].extension[+].url = "institution"
* qualification[=].extension[=].extension[=].valueString = "Royal Australian and New Zealand College of Psychiatrists"

* qualification[=].extension[=].extension[+].url = "city"
* qualification[=].extension[=].extension[=].valueString = "Wellington"

* qualification[=].extension[=].extension[+].url = "country"
* qualification[=].extension[=].extension[=].valueString = "NZ"






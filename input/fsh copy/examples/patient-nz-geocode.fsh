
Instance: patient-nz-geocode
InstanceOf: Patient
Description: "Example of geocode"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"

* address[0].line = "23 thule st"
* address[0].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode"
* address[0].extension[=].extension[+].url = "latitude"
* address[0].extension[=].extension[=].valueDecimal = -35.99

* address[0].extension[=].extension[+].url = "longitude"
* address[0].extension[=].extension[=].valueDecimal = 174.47

* gender = #male
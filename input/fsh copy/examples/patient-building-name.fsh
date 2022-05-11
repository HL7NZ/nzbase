
Instance: patient-building-name
InstanceOf: Patient
Description: "Example of building name extension"
Usage: #example



* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* address.line = "23 thule st"
* address.city = "Waipu"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/building-name"
* address.extension[=].valueString = "Big blue building"
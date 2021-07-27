
Instance: patient-suburb
InstanceOf: Patient
Description: "Example of suburb"
Usage: #example



* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* address.line = "23 thule st"
* address.city = "Waipu"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Cove"
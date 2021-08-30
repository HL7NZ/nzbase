Instance: patient-address-suburb
InstanceOf: Patient
Description: "Patient with building name and suburb in the address"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept = $dhb-code-cs#G00026-A "Northland"

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male
* address.line = "23 thule st"
* address.country = "NZL"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Cove"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/building-name"
* address.extension[=].valueString = "Big Red Shed"
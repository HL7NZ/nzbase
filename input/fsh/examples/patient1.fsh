
Instance: 8479
InstanceOf: Patient
Description: "Patient1"
Usage: #example

* name.text = "John Doe"


// extensions onf address....
* address[+].line[+] = "23 Thule st"
* address[=].line[+] = "Erewhon"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Little Bay"

* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/building-name"
* address[=].extension[=].valueString = "Big blue building"

* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode"
* address[=].extension[=].extension[+].url = "latitude"
* address[=].extension[=].extension[=].valueDecimal = -41
* address[=].extension[=].extension[+].url = "longitude"
* address[=].extension[=].extension[=].valueDecimal = 172



//top level extensions
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code" 
* extension[=].valueCodeableConcept = $domicile-code-cs#0040 "Waipu"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept = $dhb-code-cs#G00026-A "Northland"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship" 
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept = $citizenship-status-cs#CITIZEN
* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept = $information-source-cs#PPRT

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity" 
* extension[=].valueCodeableConcept = $ethnicity-code-cs#10000 "European NFD"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/pho" 
* extension[=].valueCodeableConcept = $pho-code-cs#G05569-J
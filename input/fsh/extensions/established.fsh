Extension: Established
Id: established
Description: "The period over which the location or Organization is open"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context[+].type = #element
* ^context[=].expression = "Location.alias"

* ^context[+].type = #element
* ^context[=].expression = "Organization"

* ^status = #active


* extension 0..0
* value[x] only Period
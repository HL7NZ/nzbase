Profile:        NzCoverage
Parent:         Coverage
Id:             NzCoverage
Title:          "Coverage resource for use in NZ (Trial use)"
Description:    "Coverage resource for use in NZ (Trial use)"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzCoverage"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use

* ^purpose = "Profile on Coverage for NZ use. Primarily changing the type valueset "
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Coverage profile</div>"

* type TU
* type from $coverage-type-vs (preferred)
* class.type from $coverage-category-vs (extensible)

//todo - decide if must support elements - aussies don't use it

Extension: DeathDate
Id: death-date
Description: "The date the person died."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/death-date"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Practitioner"

* ^purpose = "The date the person died. (def) "

* extension 0..0
* value[x] only date
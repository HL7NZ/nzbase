Extension: OriginalText
Id: gender-original-text
Description: "The uncoded original text that was provided by the patient as their Gender"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/gender-original-text"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient.gender"

* extension 0..0
* value[x] only string
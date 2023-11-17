Extension: GenderOriginalText
Id: gender-original-text
Description: "Text provided by the person with the choice of 'Another gender' (The FHIR AdministrativeGender CodeSystem codes this as '[other](http://hl7.org/fhir/R4B/codesystem-administrative-gender.html)')."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/gender-original-text"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "Patient.gender"

* extension 0..0
* value[x] only string
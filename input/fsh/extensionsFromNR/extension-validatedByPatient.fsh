

//----------------------------------------
Extension: ValidatedByPatient
Id: validated-by-patient
Description: "If true, then indicates that the patient as indicated that the data is correct. Defined by healthAlliance"
//* ^url = "http://hl7.org.nz/fhir/StructureDefinition/validatedByPatient"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/validated-by-patient"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Address"

* ^context[1].type = #element
* ^context[1].expression = "ContactPoint"


* extension 0..0
* value[x] only boolean




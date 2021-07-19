Extension: AuthorizedByPatient
Id: authorized-by-patient
Description: "If true, then indicates that the patient as authorized the use of this address or telecom to contact them."

//* ^definition = "If true, then indicates that the patient as authorized the use of this address or telecom to contact them." 
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/authorized-by-patient"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Address"

* ^context[1].type = #element
* ^context[1].expression = "ContactPoint"

* extension 0..0
* value[x] only boolean



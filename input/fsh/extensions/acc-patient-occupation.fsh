Extension: AccPatientOccupation
Id: acc-patient-occupation
Description: "Codes to describe a patient's occupation, using ACC's patient occupation codeset. 

Note that the current ValueSet binding contains codes from NZSC099. ACC are planning to update this ValueSet to base the codes on ANZSCO at the request of Stats NZ (Timing TBC), so the binding strength has been left as 'example'."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation"
// * ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^version = "1.0.0"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/acc-patient-occupation-code (example)
Extension: CurrentOccupation
Id: current-occupation
Description: "The current occupation for the patient"


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/current-occupation"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"
* ^status = #draft


//states that there are no 'child' extensions
* extension 0..0

//currently there is no binding - that means that any vaklue is permitted.
* value[x] only CodeableConcept
Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    "Encounter resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzEncounter"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft
* ^version = "1.0.0"

* subject only Reference(NzPatient)
* participant.individual only Reference(NzPractitioner or NzPractitionerRole or NzRelatedPerson)
* location.location only Reference(NzLocation)
* serviceProvider only Reference(NzOrganization)
* partOf only Reference(NzEncounter)

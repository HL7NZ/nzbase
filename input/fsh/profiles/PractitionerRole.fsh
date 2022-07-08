Profile:        NzPractitionerRole
Parent:         PractitionerRole
Id:             NzPractitionerRole
Title:          "PractitionerRole resource for use in NZ"
Description:    "PractitionerRole resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzPractitionerRole"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $practitionerRole-creator named practitionerRole-creator 0..1 and
    $practitionerRole-status-reason named practitionerRole-status-reason 0..1 
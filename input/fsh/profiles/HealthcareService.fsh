Profile:        NzHealthcareService
Parent:         HealthcareService
Id:             NzHealthcareService
Title:          "HealthcareService resource for use in NZ"
Description:    "HealthcareService resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/HealthcareService"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $dhb named dhb 0..1 and
    $funded-programme named funded-programme 0..1
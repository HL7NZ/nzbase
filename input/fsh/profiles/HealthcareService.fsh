Profile:        NzHealthcareService
Parent:         HealthcareService
Id:             NzHealthcareService
Title:          "HealthcareService resource for use in NZ"
Description:    "HealthcareService resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzHealthcareService"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft
* ^version = "1.0.0"

* extension contains
    $dhb named dhb 0..1 and
    $funded-programme named funded-programme 0..* and
    $pho named pho 0..1 and
    $messagingAddress named messaging-address 0..* 
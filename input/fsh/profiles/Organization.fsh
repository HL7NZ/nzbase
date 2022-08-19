Profile:        NzOrganization
Parent:         Organization
Id:             NzOrganization
Title:          "Organization resource for use in NZ"
Description:    "Organization resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzOrganization"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $established named established 0..1 and
    $funded-programme named funded-programme 0..* 

* alias.extension contains
    $alias-type named alias-type 0..1 
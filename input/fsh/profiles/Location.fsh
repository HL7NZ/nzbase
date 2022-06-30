Profile:        NzLocation
Parent:         Location
Id:             NzLocation
Title:          "Location resource for use in NZ"
Description:    "Location resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzLocation"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $alias-type named alias-type 0..1 and
    $dhb named dhb 0..1 and
    $established named established 0..1 and
    $funded-programme named funded-programme 0..1 and 
    $pho named pho 0..1


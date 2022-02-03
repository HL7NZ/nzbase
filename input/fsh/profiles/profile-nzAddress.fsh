

Alias: $nzGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code



Profile:        NzAddress
Parent:         Address
Id:             NzAddress
Title:          "Common NZ Address datatype"
Description:    "Adds building name, suburb, domicile code and geocode to the Address datatype"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzAddress"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/hpi-nz-address"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Address datatype profile</div>"
* ^text.status = #additional

* district 0..0
* state 0..0

//Needs to be a different geocode as uses a different datum
* extension contains
    $nzGeocode named nz-geocode 0..1 and
    $suburb named suburb 0..1 and
    $buildingName named building-name 0..1 and 
    $domicileCode named domicile-code 0..1 
    
* extension[nz-geocode] ^short = "A geocode using the NZ specific datum (reference point)"
* extension[nz-geocode].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode" (exactly)
* extension[suburb] ^short = "The suburb part of the address"
* extension[building-name] ^short = "The name of the building"
* extension[domicile-code] ^short = "The domicile code associated with this address"

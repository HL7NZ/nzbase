

Alias: $cpPurpose = http://hl7.org.nz/fhir/StructureDefinition/contactpoint-purpose
Alias: $cpEdi = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        NzContactPoint
Parent:         ContactPoint
Id:             NzContactPoint
Title:          "Common NZ ContactPoint datatype"
Description:    "Common NZ ContactPoint datatype"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzContactpoint"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ ContactPoint datatype profile</div>"
* ^text.status = #additional


//Needs to be a different geocode as uses a different datum
* extension contains
    $cpPurpose named cp-purpose 0..1 

* extension[cp-purpose] ^short = "The business reason this ContactPoint is being used"
* extension[cp-purpose].url = $cpPurpose (exactly)


* system.extension contains
    $cpEdi named cp-edi 0..1

    
* system.extension[cp-edi] ^short = "Represents an EDI contact"
* system.extension[cp-edi].url = $cpEdi (exactly)

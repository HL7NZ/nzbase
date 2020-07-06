Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        NzLocation
Parent:         Location
Id:             NzLocation
Title:          "NZ Location"
Description:    "NZ base Location profile. Adds slicing for HPI Facility code and uses nzAddress"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Location profile</div>"
* ^text.status = #additional

//root level extensions
* extension contains
    $ediAddress named edi-address 0..1
* extension[edi-address] ^short = "The healthLink EDI address associated with this Location"

//Needs to be a different geocode as uses a different datum
* address only NzAddress

//slice the identifier
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    HpifacId 0..1 MS and
    dormantHpiFacId 0..* MS and
    MOHFacId 0..1 MS

* identifier[HpifacId].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[HpifacId].use = #official
* identifier[HpifacId] ^short = "The current Facility id for this location"

* identifier[dormantHpiFacId].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[dormantHpiFacId].use = #old
* identifier[dormantHpiFacId] ^short = "Old facility id's that have been deprecated"

* identifier[MOHFacId].system = "https://standards.digital.health.nz/ns/moh-facility-id"
* identifier[MOHFacId].use = #official
* identifier[MOHFacId] ^short = "The MOH (NZHIS) Legacy facility code)"
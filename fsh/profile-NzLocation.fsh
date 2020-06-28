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
    facId 0..1 MS and
    dormantFacId 0..1 MS

* identifier[facId].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[facId].use = #official
* identifier[facId] ^short = "The current Facility id for this location"

* identifier[dormantFacId].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[dormantFacId].use = #old
* identifier[dormantFacId] ^short = "Old facility id's that have been deprecated"
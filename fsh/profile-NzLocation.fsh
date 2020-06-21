//Alias: $nzGeocode = http://hl7.org.nz/fhir/StructureDefinition/nzGeocode

Profile:        NzLocation
Parent:         Location
Id:             NzLocation
Title:          "NZ Location"
Description:    "NZ base Location profile. Adds slicing for HPI Facility code and uses nzAddress"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Location profile</div>"
* ^text.status = #additional

//root level extensions

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

* identifier[dormantFacId].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[dormantFacId].use = #old
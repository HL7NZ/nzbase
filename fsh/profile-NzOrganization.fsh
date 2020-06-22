
Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        NzOrganization
Parent:         Organization
Id:             NzOrganization
Title:          "NZ Organization"
Description:    "base NZ Organization profile. Slices on identifier for HPI and uses nzAddress"


* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ base Organization  profile. </div>"
* ^text.status = #additional
//root level extensions
* extension contains
    $ediAddress named edi-address 0..1
    
* address only NzAddress

//slice the identifier for HPI Organization identifierr
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    orgId 0..* MS
* identifier[orgId].system = "https://standards.digital.health.nz/id/hpi-org"
* identifier[orgId].use = #official



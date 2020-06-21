
Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity

Profile:        NzPractitioner
Parent:         Practitioner
Id:             NzPractitioner
Title:          "NZ Practitioner"
Description:    "The New Zealand base practitioner. Slices on identifier for CPN, makes name mandatory and uses NZ address."

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Base Practitioner profile</div>"
* ^text.status = #additional

//top level  extensions
* extension contains 
    $nzEthnicity named nzEthnicity 0..6

* address only NzAddress

//must be one name with a family name
//todo - should we really insist on a family name? May not always be known...
* name 1..* MS
//* name.family 1..1 MS

//slice identifier to add the HPI as Must Support
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    HPI 0..1 MS 

* identifier[HPI].system = "http://standards.digital.health.nz/id/hpi-person"
* identifier[HPI].use = #official
* identifier[HPI] ^short = "The currently active CPN (Common Person Name)"
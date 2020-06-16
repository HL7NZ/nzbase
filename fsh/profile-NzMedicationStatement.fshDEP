

Profile:        NzMedicationStatement
Parent:         MedicationStatement
Id:             nzMedicationStatement
Title:          "NZ MedicationStatement"
Description:    "The base MedicationStatement resource in NZ."

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Base Patient profile</div>"
* ^text.status = #additional


//identifier - current NHI. Required & must support
//todo Does still allow other identifiers - should it?
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use" 
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    NHI 1..1 MS 

//This is the current NHI
* identifier[NHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[NHI].use = #official (exactly)


// Aliases for extensions
Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity
Alias: $birthPlace = http://hl7.org.nz/fhir/StructureDefinition/birth-place
Alias: $patient-iwi = http://hl7.org.nz/fhir/StructureDefinition/patient-iwi
//Alias: $patient-addressDerived = http://hl7.org.nz/fhir/StructureDefinition/patient-addressDerived
//Alias: $NHI = https://standards.digital.health.nz/id/nhi
Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/information-source
Alias: $citizenship = http://hl7.org.nz/fhir/StructureDefinition/citizenship

Profile:        NzPatient
Parent:         Patient
Id:             NzPatient
Title:          "NZ Patient"
Description:    "The base Patient resource in NZ. Slices on identifer for NHI numbers (current & old), uses nzAddress and adds sme commonly used extensions"

* ^purpose = "Describe the base New Zealand Patient profile"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Base Patient profile</div>"
* ^text.status = #additional

//root level extensions
* extension contains
    $nzEthnicity named nz-ethnicity 0..6 and
    $birthPlace named birth-place 0..1 and
    $patient-iwi named patient-iwi 0..1 and
    $citizenship named citizenship 0..1
   

//set the address to the nz address (adds geocode, building name, domicileCode and suburb)
* address only NzAddress

//identifier - current NHI. 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use" 
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    NHI 0..1 MS and
    dormantNHI 0..* MS

//This is the current NHI
* identifier[NHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[NHI].use = #official (exactly)

//These are any previous NHI's (called 'dormant' by the MOH Identity team)
* identifier[dormantNHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[dormantNHI].use = #old (exactly)

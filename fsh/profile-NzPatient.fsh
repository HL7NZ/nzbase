// Aliases for extensions
Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nzEthnicity
Alias: $birthPlace = http://hl7.org.nz/fhir/StructureDefinition/birthPlace
Alias: $patient-iwi = http://hl7.org.nz/fhir/StructureDefinition/patient-iwi
Alias: $patient-addressDerived = http://hl7.org.nz/fhir/StructureDefinition/patient-addressDerived
//Alias: $NHI = https://standards.digital.health.nz/id/nhi
Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/informationsource
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
    $nzEthnicity named nzEthnicity 0..4 and
    $birthPlace named birthPlace 0..1 and
    $patient-iwi named patient-iwi 0..1 and
    $citizenship named citizenship 0..1
   

//set the address to the nz address (adds geocode and suburb)
* address only nzAddress

//* address.extension contains
 //   $nzGeocode named nzGeocode 0..1


/*
//temp while testing
* address.extension contains
    $patient-addressDerived named patient-addressDerived 0..1

*/
//identifier - current NHI. Not including dormant NHI's in base...
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use" 
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    NHI 0..1 MS and
    dormantNHI 0..1 MS

* identifier[NHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[NHI].use = #official (exactly)

* identifier[dormantNHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[dormantNHI].use = #old (exactly)

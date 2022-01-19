//Extension urls defined in this IG...

Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity
Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
Alias: $information-source = http://hl7.org.nz/fhir/StructureDefinition/information-source
Alias: $nzCitizen = http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship
Alias: $building-name = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicile-code = http://hl7.org.nz/fhir/StructureDefinition/domicile-code
Alias: $nz-geocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $pho = http://hl7.org.nz/fhir/StructureDefinition/pho
Alias: $sex-at-birth = http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb


Profile:        NzPatient
Parent:         Patient
Id:             NzPatient
Title:          "NZ Patient"
Description:    "The base New Zealand Patient profile"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzPatient"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "Describe the Base New Zealand Patient resource profileI"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Patient profile</div>"

//todo - decide if must support elements - aussies don't use it

* extension contains 
    $ethnicity named ethnicity 0..6 and
    $nzCitizen named nzCitizen 0..1 and 
    $dhb named dhb 0..1 and 
    $domicile-code named domicile-code 0..1 and 
    $nzCitizen named nz-citizenship 0..1 and 
    $pho named pho 0..1 and 
    $sex-at-birth named sex-at-birth 0..1

* extension[nzCitizen] ^short = "Is this person a New Zealand citizen"


//slicing for NHI

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.description = "Add NHI as a defined identifier type"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    NHI 0..1 MS 

* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].use = #official (exactly)
* identifier[NHI].use ^short = "fixed to official"

* identifier[NHI] ^short = "The currently active NHI "
* identifier[NHI] ^definition = "The NHI number is a unique number for all New Zealanders, assigned at birth"

//-------- end of identifier slicing --------

* name.extension contains
    $information-source named information-source 0..1

* birthDate.extension contains 
    $information-source named information-source 0..1

* address.extension contains
    $building-name named building-name 0..1 and 
    $nz-geocode named ne-geocode 0..1 and 
    $suburb named suburb 0..1


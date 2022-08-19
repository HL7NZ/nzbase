//Extension urls defined in this IG...
/*
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
*/

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

* address only NzAddress
* telecom only NzContactPoint

* extension contains 
    $ethnicity named ethnicity 0..* and
    $nzCitizen named nzCitizen 0..1 and 
    $dhb named dhb 0..1 and 
    $domicile-code named domicile-code 0..1 and 
    $pho named pho 0..1 and 
    $sex-at-birth named sex-at-birth 0..1 and
    $iwi named iwi 0..*

* extension[nzCitizen] ^short = "Is this person a New Zealand citizen"

/* Using 'pure' slicing

//slicing for NHI
//using the pattern rather than value as the discrimitator type to allow other components
//of an identifier to be included (eg period or type) which other users of identifier may wish to use.
//'value' is very restrictive in what it allows - eg using period / type would cause it to fail validation... 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"


* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "use"
* identifier ^slicing.rules = #open

* identifier contains 
    NHI 0..1 MS   and    // allow no more than one  active NHIs
    dormant 0..* MS      // allow many dormant NHIs
// because it is an open slice, identifiers with other system identifiers and uses are also allowed
    
* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].use = #offical (exactly)
* identifier[NHI].use ^short = "fixed to official"
* identifier[NHI] ^short = "The currently active NHI "
* identifier[NHI] ^definition = "The NHI number is a unique number for all New Zealanders, assigned at birth"


* identifier[dormant].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].use ^short = "fixed to old"
* identifier[dormant] ^short = "NHI identifiers that have been deprecated for this Person"
* identifier[dormant] ^definition = "An NHI of the person that is no longer in use.   An NHI becomes dormant when it is discovered that 2 NHIs exist for the same person. The NHIs are linked, one becomes ‘live’ the other ‘dormant’."

*/

//using VS & invariants
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    NHI 0..* 


* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].use from nhi-use

* obeys nz-pat-1

Invariant: nz-pat-1
Expression: "Patient.identifier.where(system='https://standards.digital.health.nz/ns/nhi-id' and use='official').count() < 2"
Severity: #error
Description: "only a single official NHI"


ValueSet : NHIUse
Id: nhi-use
Title: "Valid use values for NHI"
Description:  "NHI Use codes"

* ^url = $nhi-use-vs

* http://hl7.org/fhir/identifier-use#official
* http://hl7.org/fhir/identifier-use#old

//* codes from system $nhi-use-cs

/*

CodeSystem:  Nhi-use
Id: nhi-use
Title: "NZ Citizenship status"
Description:  "Is this person a NZ Citizen"

* ^url = $nhi-use-cs

* #yes "Yes" "This patient is a citizen."
* #no "No" "This patient is not a citizen."
* #unknown "The citizenship status is unknown"

*/
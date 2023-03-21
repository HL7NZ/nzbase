Profile:        NzMedication
Parent:         Medication
Id:             NzMedication
Title:          "Medication resource for use in NZ"
Description:    "Medication resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzMedication"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $nzf-atc named nzf-atc 0..* and 
    $nzf-nzmt-type named nzf-nzmt-type 0..1 
    //$nzf-prescribe-by-brand named nzf-prescribe-by-brand 0..1 and
    //$nzf-related-medication named nzf-related-medication 0..*

* code only CodeableConcept
* code from http://nzmt.org.nz/vs (preferred)
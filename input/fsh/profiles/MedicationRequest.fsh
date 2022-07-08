Profile:        NzMedicationRequest
Parent:         MedicationRequest
Id:             NzMedicationRequest
Title:          "MedicationRequest resource for use in NZ"
Description:    "MedicationRequest resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzMedicationRequest"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $nzeps-long-term-medication named nzeps-long-term-medication 0..1 and
    $nzeps-supply-period-reason named nzeps-supply-period-reason 0..1 and
    $nzeps-unusual-dose-quantity named nzeps-unusual-dose-quantity 0..1


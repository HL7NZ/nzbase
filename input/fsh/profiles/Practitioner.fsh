Profile:        NzPractitioner
Parent:         Practitioner
Id:             NzPractitioner
Title:          "Practitioner resource for use in NZ"
Description:    "Practitioner resource for use in NZ"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/Practitioner"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $death-date named death-data 0..1 and
    $educational-qualification named educational-qualification 0..1 and
    $ethnicity named ethnicity 0..1 and
    $iwi named iwi 0..1


* qualification.extension contains
    $additional-authorisation named additional-authorisation 0..1 and
    $condition-on-practice named condition-on-practice 0..1 and
    $educational-qualification named educational-qualification 0..1 and
    $registration-initial-date named registration-initial-date 0..1 and
    $registration-status-code named registration-status-code 0..1 and
    $scope-of-practice named scope-of-practice 0..1



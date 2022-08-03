Profile:        NzCondition
Parent:         Condition
Id:             NzCondition
Title:          "Condition resource for use in NZ"
Description:    "This profile adds the Long-Term Condition extension to the base Condition resource"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzCondition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft

* extension contains
    $long-term-condition named long-term-condition 0..1
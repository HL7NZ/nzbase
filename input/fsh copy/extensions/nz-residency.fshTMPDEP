Extension: NZResidencyStatus
Id: nz-residency-status
Description: "NZ Residency status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency-status"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1     

* extension[status] ^definition = "Residency Status"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $nz-residency-status-vs (preferred)

* extension[source] ^definition = "The source of information concerning the residency"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $information-source-vs (required)


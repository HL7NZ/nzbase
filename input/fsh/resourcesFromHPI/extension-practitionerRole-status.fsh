Extension: PractitionerRoleStatus
Id: practitionerRole-status
Description: "The status of the role - active,ended"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* ^status = #draft

* extension contains
    active 0..1 and
    reason 0..1

// Is it active
* extension[active].url = "active" (exactly)
* extension[active] ^definition = "True if the role is active at the time it was returned"
* extension[active].value[x] only boolean

//the reason if the status is false
* extension[reason].url = "reason" (exactly)
* extension[reason] ^definition = "The reason for the current status if it is not active"
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code (preferred)

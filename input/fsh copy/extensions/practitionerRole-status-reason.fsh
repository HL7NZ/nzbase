Extension: PractitionerRoleStatusReason
Id: practitionerRole-status-reason
Description: "The reason for the status. Generally only used for inactive resources."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status-reason"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* ^status = #active

* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code (preferred)


/*
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
* extension[reason].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code (preferred)
*/
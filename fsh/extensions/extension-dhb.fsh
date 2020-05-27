Extension: Dhb
Id: dhb
Description: "The District Health Board the patient resides in. It is derived from the patient's primary residential address (not updated directly)."

//Note - haven't made it against the address (even though it is derived from that as it's more logical to have it as a top level extension)
* ^context.type = #element
* ^context.expression = "Patient"       

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/dhb (preferred)
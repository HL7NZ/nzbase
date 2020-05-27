
Extension: DomicileCode
Id: domicileCode
Description: "The domicile code. Derived from the address "

* ^context.type = #element
* ^context.expression = "Address"


* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/vs/domicileCode (preferred)

/*
* extension 0..0
* value[x] only CodeableConcept 
* ValueCodeableConcept from https://standards.digital.health.nz/vs/domicileCode (preferred)

*/
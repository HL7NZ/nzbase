Extension: ScopeOfPractice
Id: scope-of-practice
Description: "The type or range of health services a practitioner is authorized to perform, as determined by the Responsible Authority or professional body."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension contains
    code 0..1 and
    period 0..1
* ^status = #draft
// definitions of sub-extensions
* extension[code].url = "code" (exactly)
* extension[code] ^definition = "A code identifying the services that the practitioner is permitted to perform"
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code (preferred)
/*
* extension[description].url = "description" (exactly)
* extension[description] ^definition = "A full description of the health services that a health practitioner with this scope is permitted to perform"
* extension[description].value[x] only string
*/
* extension[period].url = "period" (exactly)
* extension[period] ^definition = "The period the scope of practice is effective"
* extension[period].value[x] only Period

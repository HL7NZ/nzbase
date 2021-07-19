Extension: AdditionalAuthorization
Id: additional-authorization
Description: "Additional authorizations that a practitioner is authorized to perform"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/additional-authorization"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension contains
    code 0..1 and
    period 0..1

// definitions of sub-extensions
* extension[code].url = "code" (exactly)
* extension[code] ^definition = "A code identifying the additional authorisations that a practitioner is authorised to perform"
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code (preferred)

* extension[period].url = "period" (exactly)
* extension[period] ^definition = "The period the additional authorization is effective"
* extension[period].value[x] only Period

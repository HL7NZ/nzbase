Extension: ConditionOnPractice
Id: condition-on-practice
Description: "A full description of the conditions the health practitioner is subject to in relation to their scope of practice."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension contains
    description 0..1 and
    period 0..1

* ^status = #active

// definitions of sub-extensions
* extension[description].url = "description" (exactly)
* extension[description] ^definition = "The condition on practice as text"
* extension[description].value[x] only string

* extension[period].url = "period" (exactly)
* extension[period] ^definition = "The period the conditions on practice are effective"
* extension[period].value[x] only Period

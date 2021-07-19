Extension: AliasType
Id: alias-type
Description: "Indicates the type of alias name. VS Binding is done by the profile."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Location.alias"

* extension 0..0
//The dataype is fixed to CodeableConcept, but it's up to the profile to bind it to a ValueSet
* value[x] only CodeableConcept


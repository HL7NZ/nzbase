Extension: AliasType
Id: alias-type
Description: "Indicates the type of alias name. VS Binding is done by the profile."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #draft

* ^context[+].type = #element
* ^context[=].expression = "Location.alias"

* ^context[+].type = #element
* ^context[=].expression = "Organization.alias"

* extension 0..0

//The dataype is fixed to CodeableConcept, and bound to the full set of alias types
// but the organization and location profiles in the HPI profiles restrict each to a sub-set of aliases...
* value[x] only CodeableConcept
* valueCodeableConcept from $alias-type-vs


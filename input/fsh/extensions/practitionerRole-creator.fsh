Extension: PractitionerRoleCreator
Id: practitionerRole-creator
Description: "The organisation and person that created this role"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* ^status = #active

* extension contains
    person 1..1 and
    organization 0..1

// definitions of sub-extensions
* extension[person].url = "person" (exactly)
* extension[person] ^definition = "The person who created the role"
* extension[person].value[x] only Reference (Practitioner)

* extension[organization].url = "organization" (exactly)
* extension[organization] ^definition = "The organization where the person was working (acting on behalf of?)"
* extension[organization].value[x] only Reference (Organization)

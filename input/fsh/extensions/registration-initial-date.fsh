Extension: RegistrationInitialDate
Id: registration-initial-date
Description: "The date the practitioner first became registered with the Responsible Authority or professional body"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension 0..0
* value[x] only date
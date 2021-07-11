Alias: $prs = https://standards.digital.health.nz/ns/practitioner-registration-status-code

ValueSet: PractitionerRegistrationStatusCode
Id: practitioner-registration-status-code
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA."

* ^url = https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $prs#current "A provider who holds or is deemed to hold a current practising certificate."
* $prs#inactive "A provider who is not practising"
* $prs#removed "A provider who has been removed from the register – this includes voluntary removal, de-registration and deceased"
* $prs#suspended "A provider who is suspended from practising by a Responsible Authority"

* codes from system https://standards.digital.health.nz/ns/practitioner-registration-status-code



CodeSystem: PractitionerRegistrationStatusCode
Id: practitioner-registration-status-code
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA."

* ^url = https://standards.digital.health.nz/ns/practitioner-registration-status-code
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #current "Current"
* #inactive "Inactive"
* #removed "Removed"
* #suspended "Suspended"


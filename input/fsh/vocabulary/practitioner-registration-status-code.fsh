// Alias: $prs = https://standards.digital.health.nz/ns/practitioner-registration-status-code

ValueSet: PractitionerRegistrationStatusCode
Id: practitioner-registration-status-code
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA."

* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^version = "2.0"

* codes from system https://standards.digital.health.nz/ns/practitioner-registration-status-code

CodeSystem: PractitionerRegistrationStatusCode
Id: practitioner-registration-status-code
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA."

* ^url = "https://standards.digital.health.nz/ns/practitioner-registration-status-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^caseSensitive = true
* ^version = "2.0"
* ^experimental = false

* #current "Current" "A provider who holds or is deemed to hold a current practising certificate."
* #inactive "Inactive" "A provider who is not practising"
* #removed "Removed" "A provider who has been removed from the register – this includes voluntary removal, de-registration and deceased"
* #suspended "Suspended" "A provider who is suspended from practising by a Responsible Authority"
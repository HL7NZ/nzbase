Alias: $prsr = https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code

ValueSet : PractitionerRoleStatusReason
Id: hpi-practitionerrole-status-reason
Title: "PractitionerRole status reason"
Description: "The reason for the current status of PractitionerRole"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code

CodeSystem:  PractitionerRoleStatusReason
Id: hpi-practitionerRole-status-reason
Title: "PractitionerRole status reason"
Description:  "The reason for the current status of PractitionerRole"

* ^url = "https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #enteredInError "enteredInError"
* #duplicate "duplicate"
* #died "died"
* #other "other"


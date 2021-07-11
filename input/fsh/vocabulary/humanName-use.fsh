Alias: $hnu = http://hl7.org/fhir/name-use

ValueSet : HumanNameUse
Id: hpi-humanname-use
Title: "Use values for a HumanName"
Description: "Use values for a HumanName"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $hnu#usual "Known as/conventional/the one you normally use."
* $hnu#official "The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called 'legal name'."
* $hnu#old "This name is no longer in use (or was never correct, but retained for records)."
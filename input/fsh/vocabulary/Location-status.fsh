Alias: $ls = http://hl7.org/fhir/location-status

ValueSet : LocationStatus
Id: location-status
Title: "Status of Location - is it still in use"
Description: "Status of Location - is it still in use"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-location-status-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $ls#active "The location is operational."
* $ls#inactive "The location is no longer used."
Alias: $au = http://hl7.org/fhir/address-use

ValueSet : AddressUse
Id: hpi-address-use
Title: "Use values for an Address"
Description: "Use values for an Address"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $au#work "An office address. First choice for business related contacts during business hours."
* $au#old "This address is no longer in use (or was never correct but retained for records)."
* $au#billing "An address to be used to send bills, invoices, receipts etc."


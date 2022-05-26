// Community Services Card as Coverage resource example

Instance:   CoverageCSC
InstanceOf: NzCoverage
Description: "CSC Coverage example"
 
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Community Services Card for Raewyn Joseph<br />NHI ZZZ0032<br />CSC number 12345689<br /></div>"
* text.status = #additional

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/csc-id"
* identifier.value = "123456789"

* status = #active

* type.coding.system = "https://standards.digital.health.nz/ns/entitlement-type-code"
* type.coding.code = #csc
* type.coding.display = "Community Services Card"

* beneficiary = Reference(patient-dhb)

* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding.code = #self

* period.start = "2022-04-01"
* period.end = "2023-04-01"

* payor = Reference(organization-moh)


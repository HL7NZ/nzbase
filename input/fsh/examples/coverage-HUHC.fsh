// High User Health Card as Coverage resource example

Instance:   CoverageHUHC
InstanceOf: NzCoverage
Description: "HUHC Coverage example"
 
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>High User Health Card for Raewyn Joseph<br />NHI ZZZ0032<br />HUHC number 12345689<br /></div>"
* text.status = #additional

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/huhc-id"
* identifier.value = "123456789"

* status = #active

* type.coding.system = "https://standards.digital.health.nz/ns/entitlement-type-code"
* type.coding.code = #huhc
* type.coding.display = "High user health card"

* subscriber = Reference(patient-dhb)
* beneficiary = Reference(patient-dhb)

* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding.code = #self

* period.end = "2023-09-17"

* payor = Reference(organization-moh)
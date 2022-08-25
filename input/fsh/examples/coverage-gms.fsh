Instance:   CoverageGMS
InstanceOf: NzCoverage
Description: "GMS Coverage example"
 
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>GMS Entitlement for Raewyn Joseph<br />NHI ZZZ0032<br /></div>"
* text.status = #additional

* status = #active

* type.coding.system = $coverage-type-cs
* type.coding.code = #gms
* type.coding.display = "General Medical Subsidy"

* subscriber = Reference(patient-dhb)
* beneficiary = Reference(patient-dhb)

* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding.code = #self

// There's probably a few options of how to represent the GMS categories. The below sort of works, but the requirement to
// always have class.value (that's a string) is a bit odd for this use case. 

* class.type.coding.system = $coverage-category-cs
* class.type.coding.code = #under6
* class.type.coding.display = "A child under 6 years of age"
* class.value = "Baby"

* payor = Reference(organization-moh)
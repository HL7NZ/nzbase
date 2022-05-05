Instance: coverage-csc
InstanceOf: Coverage
Description: "Community Services Card"
Usage: #example

* status = #active
//need to decide the system for CSC (and other cards)
* identifier.system = "http://moh.org.nz/csc-cards"
* identifier.value = "a6524144"

//need a system for 'type of card/coverage'
* type = http://example.co.nz#csc "Community Services Card"
* beneficiary = Reference(patient-dhb)
* period.start = "2022-01-01"
* period.end = "2022-06-30"
* payor = Reference(organization-moh)


Instance: organization-moh
InstanceOf: Organization
Description: "Ministry of Health"
Usage: #example

* name = "Ministry of Health"
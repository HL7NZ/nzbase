//patient with active and dormant nhi

Instance: patient-nhi
InstanceOf: NzPatient
Description: "Example of PHO"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male


* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #official
* identifier[=].value = "activeIdent"


* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "dormant"

* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "dormant2"

* identifier[+].system = "https://example.com/mysystem"
* identifier[=].use = #official
* identifier[=].value = "other system id"

* identifier[+].system = "https://example.com/mysystem"
* identifier[=].use = #temp
* identifier[=].value = "other system id2"


/*
//this should fail... - and it does!
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "temp"

*/
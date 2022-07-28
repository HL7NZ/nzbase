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

//0
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #official
* identifier[=].value = "activeIdent"

//1
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #official
* identifier[=].value = "another activeIdent"

//2
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "dormant"

//3
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #temp
* identifier[=].value = "dormant"

//4
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "dormant2"

//5
* identifier[+].system = "https://example.com/mysystem"
* identifier[=].use = #official
* identifier[=].value = "other system id"

//6
* identifier[+].system = "https://example.com/mysystem"
* identifier[=].use = #temp
* identifier[=].value = "other system id2"

//7
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #temp
* identifier[=].value = "temp"

/*
//this should fail ( >1 old)... - and it does!
* identifier[+].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].use = #old
* identifier[=].value = "temp"

*/
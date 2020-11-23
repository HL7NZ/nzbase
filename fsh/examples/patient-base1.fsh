Instance:   base1
InstanceOf: NzPatient
Description: "This is the base Patient profile"
Usage: #example


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Test patient base 1</div>"
* text.status = #additional

//name. The source of the name was a NZ Visa
* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"

* extension[nz-ethnicity].valueCodeableConcept = https://standards.digital.health.nz/cs/ethnic-group-level-4#11111 "New Zealand European"
* extension[nz-ethnicity][1].valueCodeableConcept = https://standards.digital.health.nz/cs/ethnic-group-level-4#12111 "Celtic"
* extension[birth-place].extension[country].valueCodeableConcept = urn:iso:std:iso:3166#nz
* extension[birth-place].extension[place-of-birth].valueString = "Palmerston North"

* extension[citizenship].extension[status].valueCodeableConcept = https://standards.digital.health.nz/cs/citizenshipstatus#CIT
* extension[citizenship].extension[source].valueCodeableConcept = https://standards.digital.health.nz/cs/infosource#PPRT

* extension[patient-iwi].valueCodeableConcept = https://standards.digital.health.nz/cs/iwi#01

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "WER4568"

//the dormant NHI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/id/nhi"
* identifier[1].value = "ABC1234"

//email address & phone
* telecom.system = #email
* telecom.value = "johndoe@erewhon.com"


* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"


* address.text = "23 Thule st"
* address.extension[building-name].valueString = "The Red building"
* address.line = "23 thule st"
* address.extension[suburb].valueString = "RiverMouth"
* address.city = "Waipu"

* address.extension[nz-geocode].extension[longitude].valueDecimal = 100
* address.extension[nz-geocode].extension[latitude].valueDecimal = 100


* address.extension[domicile-code].valueCodeableConcept.coding.code = #0040
* address.extension[domicile-code].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/domicileCode"
* address.extension[domicile-code].valueCodeableConcept.coding.display = "Waipu"

* birthDate = "1989-12-12"

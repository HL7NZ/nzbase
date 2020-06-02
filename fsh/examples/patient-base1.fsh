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

* address.text = "23 Thule st"
* address.extension[buildingName].valueString = "The Red building"
* address.line = "23 thule st"
* address.extension[suburb].valueString = "RiverMouth"
* address.city = "Waipu"
* address.extension[nzGeocode].extension[longitude].valueDecimal = 100
* address.extension[nzGeocode].extension[latitute].valueDecimal = 100
* address.extension[domicileCode].valueCodeableConcept.coding.code = #0040
* address.extension[domicileCode].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/domicileCode"
* address.extension[domicileCode].valueCodeableConcept.coding.display = "Waipu"

* birthDate = "1989-12-12"


/*
* name.extension[informationsource].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/informationsource"
* name.extension[informationsource].valueCodeableConcept.coding.code = #NZPV
* name.extension[informationsource].valueCodeableConcept.coding.display = "New Zealand Permanent Visa"

* name.extension[preferred].valueBoolean = true

* gender = #male
* gender.extension[originalText].valueString = "Bloke"

//Birth date, verified by passport

* birthDate.extension[informationsource].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/informationsource"
* birthDate.extension[informationsource].valueCodeableConcept.coding.code = #PPRT
* birthDate.extension[informationsource].valueCodeableConcept.coding.display = "Passport"

* deceasedDateTime = "2020-01-01"
* deceasedDateTime.extension[informationsource].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/informationsource"
* deceasedDateTime.extension[informationsource].valueCodeableConcept.coding.code = #NPRF
* deceasedDateTime.extension[informationsource].valueCodeableConcept.coding.display = "Proof not sighted"

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "WER4568"

//a dormant (replaced)  NHI
* identifier.use = #old
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "ABC1234"

//ethnicity is 'not stated'
* extension[ethnicity].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/ethnic-group-level-4"
* extension[ethnicity].valueCodeableConcept.coding.code = #99999
* extension[ethnicity].valueCodeableConcept.coding.display = "Not Stated"

//email address & phone
* telecom.system = #email
* telecom.value = "johndoe@erewhon.com"
* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"

//physical address
* address.line = "23 Thule St"
* address.city = "Waipu"
* address.extension[suburb].valueString = "Waipu river"
* address.extension[buildingName].valueString = "Big Black House"
* address.extension[address-isPrimary].valueBoolean = true

* address.extension[notValidatedReason].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/addressnotvalidatedreason"
* address.extension[notValidatedReason].valueCodeableConcept.coding.code = #UKWN
* address.extension[notValidatedReason].valueCodeableConcept.coding.display = "Address unknown"


*/




/*
//DHB (from address) is Counties Manakau DHB (Assuming that Organization1 is the DHB)
* extension[dhb].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/dhb"
* extension[dhb].valueCodeableConcept.coding.code = #cmdhb


//born in Palmerston North, New Zealand. Verified by passport
* extension[patient-countryOfBirth].extension[placeOfBirth].valueString = "Palmerston North"

//birth country New Zealand
* extension[patient-countryOfBirth].extension[country].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[patient-countryOfBirth].extension[country].valueCodeableConcept.coding.code = #NZ
* extension[patient-countryOfBirth].extension[country].valueCodeableConcept.coding.display = "New Zealand"

//source of information about the birthplace was a passport
* extension[patient-countryOfBirth].extension[source].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/informationsource"
* extension[patient-countryOfBirth].extension[source].valueCodeableConcept.coding.code = #PPRT
* extension[patient-countryOfBirth].extension[source].valueCodeableConcept.coding.display = "Passport"

//citizenship status - is a citizen
* extension[patient-citizenship].extension[status].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/citizenshipstatus"
* extension[patient-citizenship].extension[source].valueCodeableConcept.coding.code = #CIT
* extension[patient-citizenship].extension[source].valueCodeableConcept.coding.display = "Citizen"

//source of citizenship about the birthplace was a passport
* extension[patient-citizenship].extension[source].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/informationsource"
* extension[patient-citizenship].extension[source].valueCodeableConcept.coding.code = #PPRT
* extension[patient-citizenship].extension[source].valueCodeableConcept.coding.display = "Passport"

//DHB is counties manukau
* extension[dhb].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/dhb"
* extension[dhb].valueCodeableConcept.coding.code = #cmdhb
* extension[dhb].valueCodeableConcept.coding.display = "Counties Manukau District Health Board"

//ethnicity English & Irish
* extension[ethnicity].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/ethnic-group-level-4"
* extension[ethnicity].valueCodeableConcept.coding.code = #12114
* extension[ethnicity].valueCodeableConcept.coding.display = "English"

* extension[ethnicity][1].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/ethnic-group-level-4"
* extension[ethnicity][1].valueCodeableConcept.coding.code = #12116
* extension[ethnicity][1].valueCodeableConcept.coding.display = "Irish"



*/

/*

//The general practitioner is described by the practitionerrole1 resource (has references to Practitioner & Organization)
* generalPractitioner.reference = "#Pr2"


Instance:   Pr2
InstanceOf: PractitionerRole
Description: "Practitioner role for test patient 2"
Usage: #inline

* practitioner.type = "Practitioner"
* practitioner.identifier.system = "https://standards.digital.health.nz/id/hpi-person"
* practitioner.identifier.value = "hpiNum1"
* practitioner.display = "Dr Marcus Welby"

* organization.type = "Organization"
* organization.identifier.system = "https://standards.digital.health.nz/id/hpi-organisation"
* organization.identifier.value = "hpiOrgId"
* organization.display = "HealthIsUs"

* location.type = "Organization"
* location.identifier.system = "https://standards.digital.health.nz/id/hpi-facility"
* location.identifier.value = "hpiFacilityId"
* location.display = "Good Health Medcial Centre"

*/
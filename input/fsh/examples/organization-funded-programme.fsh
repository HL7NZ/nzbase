Alias: $csProg = https://standards.digital.health.nz/ns/funded-programme-code


Instance: organization-funded-programme
InstanceOf: Organization
Description: "Example of Funded programme"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/funded-programme"


* extension[=].extension[+].url = "fundedProgramme"
* extension[=].extension[=].valueCodeableConcept = $csProg#DENTAL_CHILD "Dental Care - Children up to age 13"

* extension[=].extension[+].url = "currentAvailability"
* extension[=].extension[=].valueBoolean = true

* extension[=].extension[+].url = "notes"
* extension[=].extension[=].valueString = "Dental care is only free on referral. Your child’s care will normally be managed by the Auckland Regional Dental Services (ARDs)."

* name = "Dianes Dental care"
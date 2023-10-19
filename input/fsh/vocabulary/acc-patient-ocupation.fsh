// ACC Patient Occupation ValueSet

ValueSet: AccPatientOccupationValueSet
Id: acc-patient-occupation-valueset
Title: "ACC Patient Occupation"
Description: "ValueSet of codes for classifying patient occupations, drawn from the ACC codeset"
* ^url = $acc-occupation-code-vs
* codes from system https://standards.digital.health.nz/ns/acc-patient-occupation-code
* ^version = "1.0.0"


// ACC Patient Occupation CodeSystem

CodeSystem: AccPatientOccupationCodeSystem
Id: acc-patient-occupation-codesystem
Title: "ACC Patient Occupation CodeSystem"
Description: "Codes for classifying patient occupations, drawn from the ACC codeset"
* ^url = $acc-occupation-code-cs
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "ACC"
* ^caseSensitive = false
* ^valueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/acc-patient-occupation-code"


ValueSet: MaoriDescentValues
Id: maori-descent-valueset
Title: "Māori Descent"
Description: "A code indicating whether a person is of Māori descent"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/maori-descent"
* codes from system https://standards.digital.health.nz/ns/maori-descent-code
* ^version = "1.0.0"

CodeSystem: MaoriDescent
Id: maori-descent-codesystem
Title: "Māori Descent"
Description: "Codes for classifying Māori descent. Defined by Stats NZ - Census Māori descent v2.0.0"
* ^url = "https://standards.digital.health.nz/ns/maori-descent-code"
* ^version = "2.0.0"
* ^status = #active
* ^publisher = "Stats NZ"
* ^caseSensitive = true
* ^valueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/maori-descent"
* ^compositional = false
* ^versionNeeded = false
* ^experimental = false

* #1 "Māori Descent"
* #2 "No Māori Descent"
* #4 "Don't Know"
* #7 "Response Unidentifiable"
* #9 "Not Stated"

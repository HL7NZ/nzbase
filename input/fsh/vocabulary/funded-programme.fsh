ValueSet : FundedProgramme
Id: funded-programme
Title: "Funded Programme"
Description:  "Some sort of funded programme"

* ^url = $funded-programme-vs
* ^version = "1.0.0"
* codes from system $funded-programme-cs


CodeSystem:  FundedProgramme
Id: funded-programme
Title: "Funded Programme"
Description:  "Some sort of funded programme"

* ^url = $funded-programme-cs
* ^caseSensitive = true
* ^version = "1.0.0"
* ^experimental = false

* #DENTAL_CHILD "Dental Care - Children up to age 13"
* #DENTAL_ADULT_EMERGENCY "Dental Care – Adult Emergency"
* #ENROLLING_GP_PRACTICE "General Practice Enrollment"
* #OTHER "Some other funded programme not otherwise defined"

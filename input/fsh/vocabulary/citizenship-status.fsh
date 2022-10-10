ValueSet : CitizenshipStatus
Id: citizenship-status
Title: "NZ Citizenship status"
Description:  "Citizenship status"

* ^url = $citizenship-status-vs
* ^version = "1.1.0"
* codes from system $citizenship-status-cs


CodeSystem:  CitizenshipStatus
Id: citizenship-status
Title: "NZ Citizenship status"
Description:  "Is this person a NZ Citizen"

* ^url = $citizenship-status-cs
* ^caseSensitive = true
* ^version = "1.1.0"

* #yes "Yes" "This person is a citizen."
* #no "No" "This person is not a citizen."
* #unknown "The citizenship status is unknown"




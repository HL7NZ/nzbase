ValueSet : CitizenshipStatus
Id: citizenship-status
Title: "NZ Citizenship status"
Description:  "Citizenship status"

* ^url = $citizenship-status-vs
* codes from system $citizenship-status-cs


CodeSystem:  CitizenshipStatus
Id: citizenship-status
Title: "NZ Citizenship status"
Description:  "Is this person a NZ Citizen"

* ^url = $citizenship-status-cs

* #yes "Yes" "This patient is a citizen."
* #no "No" "This patient is not a citizen."
* #unknown "The citizenship status is unknown"




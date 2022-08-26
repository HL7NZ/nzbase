ValueSet: NZResidency
Id: nz-residency
Title: "NZ Residency status"
Description: "Is the person a NZ resident"

* ^url = $nz-residency-vs

* codes from system $nz-residency-cs

CodeSystem: NZResidency
Id: nz-residency
Title: "NZ Residency status"
Description: "NZ Residency status"
* ^url = $nz-residency-cs
* ^caseSensitive = true

* #yes "Permanent Resident" "Use this status if the person holds a residence class visa"
* #no "Not a Permanent Resident" "Use this status for a person who is a NZ Citizen or does not hold a residence class visa"
* #unknown "Unknown" "use this status if the residency status of the person cannot be determined or is unknown"

/* - add description as below
- text in extension as well
no

Not a Permanent Resident

Use this status for a person who is a NZ Citizen or does not hold a residence class visa
unknown

Unknown

use this status if the residency status of the person cannot be determined or is unknown

yes

Permanent Resident

Use this status if the person holds a residence class visa
*/
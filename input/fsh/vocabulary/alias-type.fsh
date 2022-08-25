//Alias: $at = https://standards.digital.health.nz/ns/alias-type-code

CodeSystem:  AliasType
Id: alias-type
Title: "Type of Alias"
Description:  "Used in Organization and Location to indicate what is the type of Alias"

* ^caseSensitive = true
* ^url = $alias-type-cs

* #aka "Aka" "The name by which the organisation or facility is also known as."
* #old "Old" "The previous legal name(s) of the organisation/facility."
* #maori "Māori" "The Māori name of the organisation or facility."
* #legal "Legal" "The name as recorded in the official register eg Register of Companies."
* #short "Short" "An abbreviated name by which the organisation or facility is known."
* #trade-as "Trading as" "Used when the organisation/facility has a separate trading name."
* #current "Current unverified or unofficial name" "The name currently used for a facility."



ValueSet : AliasType
Id: location-alias-type
Title: "Alias types"
Description: "The complete set of alias types that apply to Locations and Organizations"

* ^url = $alias-type-vs

* codes from system $alias-type-cs

/* 
Move these to the HPI...

ValueSet : LocationAliasType
Id: location-alias-type
Title: "Location alias types"
Description: "The set of alias types that apply to Locations"

* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/location-alias-type-code"

* $alias-type-cs#aka "Aka"
* $alias-type-cs#maori "Maori"
* $alias-type-cs#short "Short"

ValueSet : OrganizationAliasType
Id: organization-alias-type
Title: "Organization alias types"
Description: "The set of alias types that apply to Organizations"

* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/organization-alias-type-code"

* $alias-type-cs#aka "Aka"
* $alias-type-cs#maori "Maori"
* $alias-type-cs#short "Short"
* $alias-type-cs#legal "Legal"

*/
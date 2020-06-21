Extension: EdiAddress
Id: edi-address
Description: "Represents the HealthLink EDI number. "

* ^context.type = #element
* ^context.expression = "Location"

* ^context[1].type = #element
* ^context[1].expression = "Organization"

* ^context[2].type = #element
* ^context[2].expression = "HealthcareSerice"

* extension 0..0
* value[x] only string
Extension: Suburb
Id: suburb
Description: "The suburb of the address. This is not the same as 'district' or 'state."

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string
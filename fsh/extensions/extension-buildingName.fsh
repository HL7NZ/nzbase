Extension: BuildingName
Id: buildingName
Description: "Used on an adddress datatype when a building name is needed"

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string
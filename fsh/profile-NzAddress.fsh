Alias: $nzGeocode = http://hl7.org.nz/fhir/StructureDefinition/nzGeocode
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/buildingName
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicileCode

Profile:        NzAddress
Parent:         Address
Id:             nzAddress
Title:          "NZ Address datatype"
Description:    "Adds building name, suburb, domicile code and geocode to the Address datatype"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Address datatype profile</div>"
* ^text.status = #additional

//root level extensions

//Needs to be a different geocode as uses a different datum
* extension contains
    $nzGeocode named nzGeocode 0..1 and
    $suburb named suburb 0..1 and
    $buildingName named buildingName 0..1 and 
    $domicileCode named domicileCode 0..1
Extension: LocationEstablished
Id: location-established
Description: "The period over which the location is open"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/location-established"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Location"

* ^status = #draft


* extension 0..0
* value[x] only Period
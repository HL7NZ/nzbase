Extension: NzGeocode
Id: nz-geocode
Description: "The new zealand geocode. This uses a different datum from that defined in the spec for the geocode, so is an extension rather than using the element in the spec. see discussion at https://chat.fhir.org/#narrow/stream/179166-implementers/topic/geocode.20extension"

* ^context.type = #element
* ^context.expression = "Address"

* extension contains
    latitute 1..1 and
    longitude 1..1

// definitions of sub-extensions
* extension[latitute].url = "latitute" (exactly)
* extension[latitute] ^definition = "No description"
* extension[latitute].value[x] only decimal

* extension[longitude].url = "longitude" (exactly)
* extension[longitude] ^definition = "No description"
* extension[longitude].value[x] only decimal

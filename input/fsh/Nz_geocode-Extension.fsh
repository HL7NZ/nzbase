Extension: Nz_geocode
Id: nz-geocode
Title: "NZ Geocode"
Description: "New Zealand Geocode. This uses a different datum from that defined in the HL7 FHIR specification for a Geocode."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Address"
* extension contains
    latitute 1..1 and
    longitude 1..1
* extension[latitute] ^definition = "No description"
* extension[latitute].value[x] only decimal
* extension[longitude] ^definition = "No description"
* extension[longitude].value[x] only decimal
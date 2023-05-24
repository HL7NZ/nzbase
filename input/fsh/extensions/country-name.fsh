Extension: Country_name
Id: country-name
Title: "Country Name"
Description: "The display name for a country in an address."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/country-name"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2023-05-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only string
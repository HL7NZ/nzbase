Extension: Edi_address
Id: edi-address
Title: "EDI Address"
Description: "Represents an Electronic Data Interchange (EDI) address."
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
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "Organization"
* ^context[2].type = #element
* ^context[2].expression = "HealthcareService"
* value[x] only string
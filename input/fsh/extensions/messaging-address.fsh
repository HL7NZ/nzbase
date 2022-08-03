Extension: Messaging_address
Id: messaging-address
Title: "Messaging Address"
Description: "The address to where electronic communications might be sent. For historical reasons, there is an overlap with edi-address "

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"

* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-07-20"
* ^publisher = "HL7 New Zealand"

* ^context[+].type = #element
* ^context[=].expression = "Patient"

* extension contains
    provider 1..1 and
    value 1..1 

* extension[provider] ^definition = "The messaging provider"
* extension[provider].value[x] only string  //could be code, but need a vs

* extension[value] ^definition = "The identifier supplied by the provider"
* extension[value].value[x] only string



//-- complex with provider (code) value (string)

/*
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[+].type = #element
* ^context[=].expression = "ContactPoint.system"



* value[x] only string
*/
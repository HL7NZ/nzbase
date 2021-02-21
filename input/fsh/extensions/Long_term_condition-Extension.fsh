Extension: Long_term_condition
Id: long-term-condition
Title: "Long Term Condition Indicator"
Description: "Long Term Condition Indicator"
* ^version = "1.0"
* ^status = #draft
* ^date = "2020-08-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^purpose = "Long term condition indicator (see https://www.health.govt.nz/our-work/diseases-and-conditions/long-term-conditions)."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only boolean
* value[x] ^label = "long-term-condition"
* value[x] ^short = "Long Term Condition"
* value[x] ^definition = "Long Term Condition Indicator"
* value[x] ^isModifier = false
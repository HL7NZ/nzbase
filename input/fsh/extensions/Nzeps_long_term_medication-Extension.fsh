Extension: Nzeps_long_term_medication
Id: nzeps-long-term-medication
Title: "NZePS Long Term Medication Indicator"
Description: "NZePS Long Term Medication Indicator"
* ^version = "1.0"
* ^status = #draft
* ^date = "2020-08-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^purpose = "Long term medication usage indicator"
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only boolean
* value[x] ^label = "NZePS-long-term-medication"
* value[x] ^short = "NZePS Long Term Medication"
* value[x] ^definition = "NZePS Long Term Medication Indicator"
* value[x] ^isModifier = false
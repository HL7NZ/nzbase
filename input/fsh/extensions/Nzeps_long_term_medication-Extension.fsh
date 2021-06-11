Extension: Nzeps_long_term_medication
Id: nzeps-long-term-medication
Title: "NZePS Long Term Medication Indicator"
Description: "NZePS Long Term Medication Indicator"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 2
* ^version = "1.0"
* ^status = #active
* ^date = "2020-08-20"
* ^publisher = "HL7 New Zealand"
* ^purpose = "This has specific uses in NZ Pharmacy and GP systems for funding and clinical purposes. It is also part of the HISO 10041.1 standard for Medication Lists."
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ

* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only boolean
* value[x] ^label = "NZePS-long-term-medication"
* value[x] ^short = "NZePS Long Term Medication"
* value[x] ^definition = "NZePS Long Term Medication Indicator"
* value[x] ^isModifier = false
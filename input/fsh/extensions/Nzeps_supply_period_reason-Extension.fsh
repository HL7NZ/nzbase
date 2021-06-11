Extension: Nzeps_supply_period_reason
Id: nzeps-supply-period-reason
Title: "NZePS Supply Period Reason"
Description: "The reason for a non-standard Supply Period."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-supply-period-reason"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 1
* ^status = #active
* ^version = "1.0"
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^purpose = "The reason for a non-standard supply period, e.g. the patient going abroad."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only string
* value[x] ^label = "NZePS-supply-period-reason"
* value[x] ^short = "NZePS Supply Period Reason"
* value[x] ^definition = "The reason for a non-standard supply period."
* value[x] ^isModifier = false
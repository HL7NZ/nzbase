Extension: Nzeps_unusual_dose_quantity
Id: nzeps-unusual-dose-quantity
Title: "NZePS Unusual Dose Quantity Indicator"
Description: "NZePS Unusual Dose Quantity Indicator"
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
* ^purpose = "Indicates if an unusual dose quantity has been prescribed deliberately."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only boolean
* value[x] ^label = "NZePS-unusual-dose-quantity"
* value[x] ^short = "NZePS Unusual Dose Quantity Indicator"
* value[x] ^definition = "Indicates if an unusual dose quantity has been prescribed deliberately."
* value[x] ^isModifier = false
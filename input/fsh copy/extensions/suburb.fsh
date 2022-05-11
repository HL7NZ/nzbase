Extension: Suburb
Id: suburb
Title: "NZ Suburb"
Description: "Suburb element of a NZ Address."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"

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
* ^purpose = "Required as FHIR Base Address Type does not contain an element for Suburb (only District or State which, in population terms, are both broader than City - whereas Suburb is narrower)."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^kind = #primitive-type

* ^context[0].type = #element
* ^context[0].expression = "Address"

* value[x] only string
* value[x] ^label = "NZ Suburb"
* value[x] ^short = "NZSuburb"
* value[x] ^definition = "NZ Suburbs"
* value[x] ^comment = "NZ Suburbs are defined in the NZ Electronic Street Address Mapping (eSAM) standard."
* value[x] ^example[0].label = "Rototuna"
* value[x] ^example[0].valueString = "Rototuna"
* value[x] ^isModifier = false
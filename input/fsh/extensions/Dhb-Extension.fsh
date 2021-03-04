Extension: Dhb
Id: dhb
Title: "District Health Board linked to a NZ Healthcare Service, Location or Patient"
Description: "District Health Board relating to a NZ Healthcare Service, Location (Facility) or Patient (primary, physical home address)."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 3
* ^version = "1.0"
* ^date = "2020-07-31"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^purpose = "Administrative - to allow NZ HealthcareService, Location (Facility) or Patient Resources to include the related District Health Board."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* ^context[1].type = #element
* ^context[1].expression = "Location"
* ^context[2].type = #element
* ^context[2].expression = "Patient"
* value[x] only CodeableConcept
* value[x] from $dhb-code_1 (extensible)
* value[x] ^label = "DHB Code"
* value[x] ^short = "NZ District Health Boards"
* value[x] ^definition = "NZ District Health Boards as defined in the NZ Health Provider Index Listing published by the NZ Ministry of Health each month."
* value[x] ^requirements = "The NzDHB ValueSet should be used as this provides the correct NZ HPI-ORG ID for each of the 20 District Health Boards.The binding strength is extensible as this is the most suitable option for a Codeable Concept data type."
* value[x] ^example[0].label = "Waikato DHB"
* value[x] ^example[0].valueCodeableConcept.coding[0].version = "1.0"
* value[x] ^example[0].valueCodeableConcept.coding[0] = $dhb-code#G00027-C "Waikato District Health Board"
* value[x] ^isModifier = false
* value[x] ^binding.description = "NZ HPI-ORG Values for DHBs"
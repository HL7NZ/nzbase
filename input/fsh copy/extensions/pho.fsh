Extension: Pho
Id: pho
Title: "Primary Healthcare Organisation linked to a NZ Healthcare Service, Location or Patient"
Description: "Primary Healthcare Organisation associated with a General Practice linked to a NZ Healthcare Service, Location (Facility) or Patient (GP)."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/pho"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 1
* ^status = #active
* ^version = "1.0"
* ^date = "2020-11-06"
* ^publisher = "HL7 New Zealand"

* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work

* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ

* ^purpose = "Administrative - to allow NZ HealthcareService, Location (Facility) or Patient Resources to include the related Primary Healthcare Organisation."
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* ^context[1].type = #element
* ^context[1].expression = "Location"
* ^context[2].type = #element
* ^context[2].expression = "Patient"

* value[x] only CodeableConcept
* value[x] from $pho-code-vs (extensible)
* value[x] ^label = "pho Code"
* value[x] ^short = "NZ Primary Healthcare Organisations"
* value[x] ^definition = "NZ Primary Healthcare Organisations as defined in the NZ Health Provider Index Listing published by the NZ Ministry of Health each month."
* value[x] ^requirements = "The Nzpho ValueSet should be used as this provides the correct NZ HPI-ORG ID for each of the 30 Primary Healthcare Organisations.The binding strength is extensible as this is the most suitable option for a Codeable Concept data type."

* value[x] ^example[0].label = "Procare Networks Ltd"
* value[x] ^example[0].valueCodeableConcept.coding[0].version = "1.0"
* value[x] ^example[0].valueCodeableConcept.coding[0] = $pho-code-cs#G05533-K "Procare Networks Limited"
* value[x] ^isModifier = false
* value[x] ^binding.description = "NZ HPI-ORG Values for PHOs"
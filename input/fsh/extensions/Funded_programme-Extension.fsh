Extension: Funded_programme
Id: funded-programme
Title: "Funded Healthcare Programme"
Description: "Funded NZ Healthcare Programmes"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/funded-programme"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 1
* ^version = "1.0"
* ^status = #active
* ^date = "2021-02-08"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^purpose = "Details of a NZ Healthcare Funded Programme relevant to its implementation status at an individual organisation, facility or service."
* ^copyright = "HL7 New Zealand© 2021+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "Organization"
* ^context[2].type = #element
* ^context[2].expression = "HealthcareService"
* extension contains 
    fundedProgramme 0..1 and
    currentAvailability 0..1 and 
    notes 0..1


* extension[fundedProgramme] ^definition = "The type of healthcare programme"
* extension[fundedProgramme].url = "fundedProgramme" (exactly)
* extension[fundedProgramme].value[x] only CodeableConcept
* extension[fundedProgramme].valueCodeableConcept from $funded-programme-vs (required)


* extension[currentAvailability] ^definition = "The current status"
* extension[currentAvailability].url = "currentAvailability" (exactly)
* extension[currentAvailability].value[x] only boolean

* extension[notes] ^definition = "Further details about the programme and status."
* extension[notes].url = "notes" (exactly)


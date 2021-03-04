Extension: Funded_programme
Id: funded-programme
Title: "Funded Healthcare Programme"
Description: "Funded NZ Healthcare Programmes"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 1
* ^version = "1.0"
* ^status = #draft
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
    programmeType 0..0 and
    currentStatus 0..0 and 
    notes ..1

//* extension[programmeType] ..1
* extension[programmeType] ^definition = "The type of healthcare programme"
* extension[programmeType].url = "programmeType" (exactly)
* extension[programmeType].value[x] only code
* extension[programmeType].valueCode from $funded-healthcare-programme (required)
//* extension[currentStatus] ..1

* extension[currentStatus] ^definition = "The current status"
* extension[currentStatus].url = "currentStatus" (exactly)
* extension[currentStatus].value[x] only string

* extension[notes] ^definition = "Further details about the programme and status."
//*  extension[notes].extension ..0
* extension[notes].url = "notes" (exactly)

//* extension[expiryDate].value[x] only string
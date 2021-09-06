Extension: Death_date
Id: death-date
Title: "Date of death"
Description: "The date of death of the individual, plus the source of that information"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/death-date"

* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"

* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work

* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ

* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[+].type = #element
* ^context[=].expression = "Practitioner"

* extension contains
    date 0..1 and
    source 0..1 

* ^status = #draft

// definitions of sub-extensions
* extension[date].url = "date" (exactly)
* extension[date] ^definition = "The date of death"
* extension[date] ^short = "The date of death"
* extension[date].value[x] only dateTime

* extension[source].url = "source" (exactly)
* extension[source] ^definition = "The source of information"
* extension[source] ^short = "The source of information"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $information-source-vs (preferred)


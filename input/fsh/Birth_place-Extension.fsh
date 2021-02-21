Extension: Birth_place
Id: birth-place
Title: "Birth Place"
Description: "The country where the person was born"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* extension contains
    country 0..1 and
    placeOfBirth 0..1 and
    source 0..1
* extension[country] ^definition = "The birth country."
* extension[country].value[x] only CodeableConcept
* extension[country].valueCodeableConcept 0..1
* extension[country].valueCodeableConcept from $iso3166-1-2 (preferred)
* extension[placeOfBirth] ^definition = "No description"
* extension[placeOfBirth].value[x] only string
* extension[source] ^definition = "The source of information concerning the country of birth"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept 0..1
* extension[source].valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/info-source (required)
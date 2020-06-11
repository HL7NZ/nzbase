
Extension: BirthPlace
Id: birthPlace
Description: "The country where the person was born"


* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    country 0..1 and
    placeOfBirth 0..1 and
    source 0..1     //todo - rremove from here and add to NHI

// definitions of sub-extensions
* extension[country].url = "country" (exactly)
* extension[country] ^definition = "The birth country."
* extension[country].value[x] only CodeableConcept
* extension[country].valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)

* extension[placeOfBirth].url = "placeOfBirth" (exactly)
* extension[placeOfBirth] ^definition = "No description"
* extension[placeOfBirth].value[x] only string

* extension[source].url = "source" (exactly)
* extension[source] ^definition = "The source of information concerning the country of birth"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from http:/hl7.org.nz/fhir/ValueSet/info-source (required)

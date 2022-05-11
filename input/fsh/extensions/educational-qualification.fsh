Extension: EducationalQualification
Id: educational-qualification
Description: "Educational qualifications a practitioner has. These may or may not be related to registration information."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context[0].type = #element
* ^context[0].expression = "Practitioner.qualification"

* ^context[+].type = #element
* ^context[=].expression = "Practitioner"

//* ^context.type = #element
//* ^context.expression = "Practitioner"

* extension contains
    fullname 0..1 and
    shortname 0..1 and
    year 0..1 and
    institution 0..1 and
    city 0..1 and
    country 0..1 
* ^status = #active

// definitions of sub-extensions
* extension[fullname].url = "fullname" (exactly)
* extension[fullname] ^definition = "The full name of the educational qualification"
* extension[fullname] ^short = "The full name of the educational qualification"
* extension[fullname].value[x] only string

* extension[shortname].url = "shortname" (exactly)
* extension[shortname] ^definition = "A short name of the educational qualification for when space is limited"
* extension[shortname] ^short = "A short name of the educational qualification for when space is limited"
* extension[shortname].value[x] only string

* extension[year].url = "year" (exactly)
* extension[year] ^definition = "The year in which the qualification was granted"
* extension[year] ^short = "The year in which the qualification was granted"
* extension[year].value[x] only date

* extension[institution].url = "institution" (exactly)
* extension[institution] ^definition = "The institution that granted the qualification"
* extension[institution] ^short = "The institution that granted the qualification"
* extension[institution].value[x] only string

* extension[city].url = "city" (exactly)
* extension[city] ^definition = "The city where the institution is located"
* extension[city] ^short = "The city where the institution is located"
* extension[city].value[x] only string

* extension[country].url = "country" (exactly)
* extension[country] ^definition = "The country where the institution is located"
* extension[country] ^short = "The country where the institution is located"
* extension[country].value[x] only string
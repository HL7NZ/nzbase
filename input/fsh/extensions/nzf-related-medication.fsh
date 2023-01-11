Extension: Nzf_related_medication
Id: nzf-related-medication
Description: "A related medication within the NZMT hierarchy"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzf-related-medication"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-08-25T23:28:05+00:00"
* ^publisher = "New Zealand Medicines Formulary LP"
* ^contact.name = "New Zealand Medicines Formulary LP"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "mailto:reuben@illuminsoftware.com"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Medication"
* . ^definition = "A related medication within the NZMT hierarchy"
* extension contains
    code 1..1 and
    type 1..1
* extension[code] ^short = "The NZMT code of the related medication"
* extension[code] ^definition = "The NZMT code of the related medication"
* extension[code].value[x] only CodeableConcept
* extension[type] ^short = "The NZMT type of the related medication"
* extension[type] ^definition = "The NZMT type of the related medication"
* extension[type].value[x] only CodeableConcept
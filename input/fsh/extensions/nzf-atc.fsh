Extension: Nzf_atc
Id: nzf-atc
Description: "Anatomical Therapeutic Chemical (ATC) Classification - see https://www.who.int/tools/atc-ddd-toolkit/atc-classification"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzf-atc"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2022-08-25T23:28:05+00:00"
* ^publisher = "New Zealand Medicines Formulary LP"
* ^contact.name = "New Zealand Medicines Formulary LP"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "mailto:reuben@illuminsoftware.com"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Medication"
* . ^definition = "Anatomical Therapeutic Chemical (ATC) Classification - see https://www.who.int/tools/atc-ddd-toolkit/atc-classification"
* value[x] only CodeableConcept
* value[x] from $atc-code (required)
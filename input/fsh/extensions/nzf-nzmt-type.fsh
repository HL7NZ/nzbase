Extension: Nzf_nzmt_type
Id: nzf-nzmt-type
Description: "The NZ Medicines Terminology (NZMT) Data Class – MP (Medicinal Product), MPUU (Medicinal Product Unit of Use), MPP (Medicinal Product Pack), TP (Trade Product), TPUU (Trade Product Unit of Use), TPP (Trade Product Pack) or CTPP (Containered Trade Product Pack) – that the Medication is a member of."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type"
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
* . ^definition = "Type of NZMT record (e.g. MP, MPUU)"
* url = "http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type" (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $nzmt-type (required)
Extension: Nz_ethnicity
Id: nz-ethnicity
Title: "NZ Ethnicity"
Description: """
The ethnic group or groups that a person identifies with or feels they belong to.  Ethnicity is a measure of cultural affiliation as opposed to race, ancestry, nationality or citizen.  Ethnicity is self-perceived and a person can belong to more than one group.

The Stats New Zealand standard can be found [here](http://aria.stats.govt.nz/aria/#StandardView:uri=http://stats.govt.nz/cms/StatisticalStandard/vv0ovwUoTSSVDhpt).
"""
//The Stats New Zealand standard can be found [here](http://aria.stats.govt.nz/aria/#StandardView:uri=http://stats.govt.nz/cms/StatisticalStandard/vv0ovwUoTSSVDhpt).

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"

* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[1].type = #element
* ^context[1].expression = "Practitioner"
* ^context[2].type = #element
* ^context[2].expression = "RelatedPerson"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $ethnicity-code-vs (preferred)
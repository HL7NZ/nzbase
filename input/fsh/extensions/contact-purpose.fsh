Extension: Contactpoint_purpose
Id: contactpoint-purpose
Title: "A specific purpose for which this ContactPoint would be used"
Description: "An example would be to indicate that this CP is an email address for sending prescriptions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/contactpoint-purpose"

* ^version = "1.0"
* ^status = #draft
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[0].type = #element
* ^context[0].expression = "ContactPoint"

* value[x] only CodeableConcept
* valueCodeableConcept from $contact-point-purpose-vs (preferred)

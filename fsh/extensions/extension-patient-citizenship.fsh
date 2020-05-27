Extension: Citizenship
Id: citizenship
Description: "New Zealand citizenship"


* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1

// definitions of sub-extensions
* extension[status].url = "status" (exactly)
* extension[status] ^definition = "No description"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from https://standards.digital.health.nz/vs/citizenshipstatus (preferred)

* extension[source].url = "source" (exactly)
* extension[source] ^definition = "No description"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from http://standards.digital.health.nz/vs/infosource (preferred)

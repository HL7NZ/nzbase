Instance: location-established
InstanceOf: Location
Description: "A location with the date established"
Usage: #example

* name = "Daves health centre"
* alias = "Best health"

* alias.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* alias.extension[=].valuePeriod.start = "2010-01-01"
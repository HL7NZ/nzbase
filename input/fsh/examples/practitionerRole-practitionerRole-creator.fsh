
Instance: mmh
InstanceOf: Organization
Usage : #inline

* name = "Middlemore Hospital"
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "mmh"

Instance: administrator
InstanceOf: Practitioner
Usage : #inline

* name.text = "Amy Administrator"

Instance: practitionerRole-creator
InstanceOf: PractitionerRole
Description: "The creator of a practitioner role. Uses a contained resource."
Usage: #example

//the reference to the organization as the creator. There could be ab individual as well
* contained[+] = mmh
* contained[+] = administrator

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"

* extension[=].extension[+].url = "person"
* extension[=].extension[=].valueReference = Reference(administrator)

* extension[=].extension[+].url = "organization"
* extension[=].extension[=].valueReference = Reference(mmh)


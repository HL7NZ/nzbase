Instance: organization-edi-address
InstanceOf: Organization
Description: "Example of edi addrss extension"
Usage: #example

* name = "Health R Us"

* contact[+].name.text = "HealthLink EDI account"
* contact[=].telecom[+].system = #other
* contact[=].telecom[=].system.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/edi-address"
* contact[=].telecom[=].system.extension[=].valueString = "ABC-876"
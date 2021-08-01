
Instance: practitioner-edi-address
InstanceOf: Practitioner
Description: "Example of Condition on practice"
Usage: #example

* name.family = "Doe"
* name.given = "John"
* name.text = "John Doe"
* birthDate = "1998-01-01"
* gender = #male

* telecom.system = #other
* telecom.system.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/edi-address"
* telecom.system.extension[0].valueString = "hl001"




Instance: practitioner-edi-address
InstanceOf: Practitioner
Description: "Example of Condition on practice"
Usage: #example

* name.family = "Welby"
* name.given = "Marcus"
* name.text = "Marcus Welby"
* birthDate = "1998-01-01"
* gender = #male

* telecom.system = #other
* telecom.system.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/edi-address"
* telecom.system.extension[0].valueString = "healthlink"
* telecom.value = "001a"


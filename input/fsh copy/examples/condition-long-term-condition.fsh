
Instance: condition-long-term-condition
InstanceOf: Condition
Description: "Example of long term condition"
Usage: #example

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension[=].valueBoolean = true

* subject = Reference(Patient/patient-dhb)
* code = http://snomed.info/sct#1201005 "Benign essential hypertension (disorder)"
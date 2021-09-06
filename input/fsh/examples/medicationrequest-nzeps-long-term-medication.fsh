
Instance: medicationrequest-nzeps-long-term-medication
InstanceOf: MedicationRequest
Description: "Example of long term medication"
Usage: #example

* status = #active
* intent = #order
* medicationCodeableConcept = http://snomed.info/sct#261000 "Codeine phosphate"
* subject = Reference(Patient/patient-dhb)

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension[=].valueBoolean = true

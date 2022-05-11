Instance: medicationrequest-nzeps-unusual-dose-quantity
InstanceOf: MedicationRequest
Description: "Example of sunusual does quantity"
Usage: #example

* status = #active
* intent = #order
* medicationCodeableConcept = http://snomed.info/sct#261000 "Codeine phosphate"

* subject = Reference(Patient/patient-dhb)

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-unusual-dose-quantity"
* extension[=].valueBoolean = true
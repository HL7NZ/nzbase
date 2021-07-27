Instance: medicationrequest-nzeps-supply-period-reason
InstanceOf: MedicationRequest
Description: "Example of supply period reason"
Usage: #example

* status = #active
* intent = #order
* medicationCodeableConcept = http://snomed.info/sct#261000 "Codeine phosphate"

* subject = Reference(Patient/patient-dhb)

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-supply-period-reason"
* extension[=].valueString = "Going overseas"
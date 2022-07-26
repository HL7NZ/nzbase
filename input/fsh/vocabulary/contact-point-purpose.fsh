ValueSet: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-vs
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system $contact-point-purpose-cs


CodeSystem: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-cs


* #rx "Prescription"
* #vc "Video Conference"
* #wf "Web forum"

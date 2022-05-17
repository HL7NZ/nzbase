ValueSet: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-vs
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system $dhb-code-cs


CodeSystem: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-cs
* #rx-email "Prescription email"

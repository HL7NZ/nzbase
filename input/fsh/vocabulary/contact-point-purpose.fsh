ValueSet: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-vs
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^version = "1.0.0"

* codes from system $contact-point-purpose-cs


CodeSystem: ContactPointPurpose
Id: contact-point-purpose
Title: "ContactPoint purpose"
Description: "The purpose of a ContactPoint - what it is used for."

* ^url = $contact-point-purpose-cs
* ^caseSensitive = true
* ^version = "1.0.0"
* ^experimental = false

* #rx "Prescription"
* #vc "Video Conference"
* #wf "Web forum"

* #ob "Online booking"
* #vob "Vaccination online booking"
* #www "Website"
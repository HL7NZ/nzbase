Instance: nhi-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NHI"
* description = "NHI number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/nhi-id"
* uniqueId.preferred = true

* uniqueId[1].type = #uri
* uniqueId[1].value = "https://standards.digital.health.nz/id/nhi"
* uniqueId[1].comment = "Deprecated"

* uniqueId[2].type = #oid
* uniqueId[2].value = "2.16.840.1.113883.2.18.2"

Instance: hpi-person-id
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIProvider"
* description = "HPI providers"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-person-id"
* uniqueId.preferred = true

* uniqueId[1].type = #uri
* uniqueId[1].value = "https://standards.digital.health.nz/id/hpi-person"
* uniqueId[1].comment = "Deprecated"

* uniqueId[2].type = #oid
* uniqueId[2].value = "2.16.840.1.113883.2.18.3.1"

Instance: hpi-organization-id
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIOrganization"
* description = "HPI organizations"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* uniqueId[=].preferred = true

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/moh-agency-id"
* uniqueId[=].comment = "NZHIS Agency code. Deprecated"

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/id/hpi-organisation"
* uniqueId[=].comment = "Deprecated"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.840.1.113883.2.18.3.3"

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/nzhis-agency-id"
* uniqueId[=].comment = "Deprecated"






Instance: hpi-facility-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "HPIFacility"
* description = "HPI facilities"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/hpi-facility-id"
* uniqueId[=].preferred = true

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/moh-facility-id"

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/id/hpi-facility"
* uniqueId[=].comment = "Deprecated"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.840.1.113883.2.18.3.2"

* uniqueId[+].type = #uri
* uniqueId[=].value = "https://standards.digital.health.nz/ns/nzhis-facility-id"



Instance: hpipractitionerrole
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "HPIPractitionerRole"
* description = "HPI PractitionerRole id"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id"
* uniqueId.preferred = true


//------------
Instance: nmedical-council-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZMC"
* description = "Medical Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.41"


Instance: nursing-council-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZNC"
* description = "Nursing Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/nursing-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.42"


Instance: pharmacy-council-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZMC"
* description = "Pharmacy Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/pharmacy-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.68"

* uniqueId[2].type = #oid
* uniqueId[2].value = "2.16.840.1.113883.2.18.9"


Instance: midwifery-council-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZMidwife"
* description = "Midwifery Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/midwifery-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.5"

Instance: hpi-nzbn
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NBN"
* description = "New Zealand Business Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-nzbn"
* uniqueId.preferred = true


Instance: chiropractic-board-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZChiro"
* description = "Chiropractic Board Register number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/chiropractic-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.1"


Instance: dental-council-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZDental"
* description = "Dental Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/dental-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.2"


Instance: dietitians-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZDiet"
* description = "Dietitians Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/dietitians-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.3"

/* 
Instance: nzlab
InstanceOf: NamingSystem
Usage: #definition

* name = "NZLab"
* description = "Medical Laboratory Science Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-laboratory-science-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.4"

*/

Instance: medical-sciences-council-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZScience"
* description = "Medical Sciences Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"

* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-sciences-council-id"
* uniqueId.preferred = true

Instance: paramedic-council-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZParamed"
* description = "Paramedic Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"

* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/paramedic-council-id"
* uniqueId.preferred = true

Instance: occupational-therapy-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOCC"
* description = "Occupational Therapy Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/occupational-therapy-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.13"


Instance: psychotherapists-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPsycho"
* description = "Psychotherapists Board register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/psychotherapists-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.7"

Instance: optometrists-dispensing-opticians-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOpt"
* description = "Optometrists & Dispensing Opticians Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/optometrists-dispensing-opticians-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.12"

Instance: osteopathic-council-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOst"
* description = "Osteopathic Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/osteopathic-council-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.6"

Instance: physiotherapy-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPhysio"
* description = "Physiotherapy Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/physiotherapy-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.7"

Instance: podiatrists-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPodiatry"
* description = "Podiatrists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/podiatrists-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.8"

Instance: psychologists-board-id
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "NZPsych"
* description = "Psychologists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/psychologists-board-id"
* uniqueId.preferred = true

* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.2.18.70.9"

Instance: medical-radiation-technologists-board-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZRadiologist"
* description = "Medical Radiation Technologists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-radiation-technologists-board-id"
* uniqueId.preferred = true


Instance: acc45-id
InstanceOf: NamingSystem
Usage: #definition

* name = "NZACC45"
* description = "ACC 45 number"
* status = #active
* kind = #identifier
* date = "2023-08-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/acc-45-number"
* uniqueId.preferred = true

Instance: moe-facility-id
InstanceOf: NamingSystem
Usage: #definition
* status = #active
* kind = #identifier
* uniqueId.preferred = true
* uniqueId.value = "https://standards.digital.health.nz/ns/moe-facility-id"
* uniqueId.period.start = "2024-07-20"
* uniqueId.type = #uri
* contact.name = "HL7 New Zealand"
* contact.telecom.value = "http://hl7.org.nz"
* contact.telecom.system = #url
* type.text = "moe-facility"
* type =  http://terminology.hl7.org/CodeSystem/v2-0203#FI "Facility ID"
* date = "2024-07-20"
* publisher = "HL7 New Zealand"
* jurisdiction = urn:iso:std:iso:3166#NZ
* description = "This identifier, known as the 'MoE Number' or 'School Number', is used by the education sector to identify an NZ education institution. These identifiers can be looked up at the \\[[educationcounts.govt.nz](http://educationcounts.govt.nz)\\]([https://www.educationcounts.govt.nz/directories/list-of-nz-schools](https://www.educationcounts.govt.nz/directories/list-of-nz-schools)) website."
* responsible = "New Zealand Health Information Standards Organisation (HISO)"
* name = "Moe_facility_id"

Instance: nz-address-id
InstanceOf: NamingSystem
Usage: #definition
* status = #active
* kind = #identifier
* uniqueId.preferred = true
* uniqueId.value = "https://standards.digital.health.nz/ns/nz-address-id"
* uniqueId.period.start = "2024-08-05"
* uniqueId.type = #uri
* contact.name = "HL7 New Zealand"
* contact.telecom.value = "http://hl7.org.nz"
* contact.telecom.system = #url
* type.text = "nz-address-id"
* type = http://terminology.hl7.org/CodeSystem/v2-0203#U "Unspecified identifier"
* date = "2024-08-05"
* publisher = "HL7 New Zealand"
* jurisdiction = urn:iso:std:iso:3166#NZ
* description = "New Zealand Street Address Mapping Identifier"
* responsible = "New Zealand Health Information Standards Organisation (HISO)"
* name = "Nz_address_id"

Instance: rheumatic-fever-ccs-id
InstanceOf: NamingSystem
Usage: #definition
* status = #active
* kind = #identifier
* uniqueId.preferred = true
* uniqueId.value = "https://standards.digital.health.nz/ns/rf-ccs-id"
* uniqueId.period.start = "2024-08-05"
* uniqueId.type = #uri
* contact.name = "HL7 New Zealand"
* contact.telecom.value = "http://hl7.org.nz"
* contact.telecom.system = #url
* type.text = "rf-ccs-id"
* type = http://terminology.hl7.org/CodeSystem/v2-0203#U "Unspecified identifier"
* date = "2024-08-05"
* publisher = "HL7 New Zealand"
* jurisdiction = urn:iso:std:iso:3166#NZ
* description = "Identifier assigned by the Rheumatic Fever Care Coordination System, used on CarePlan, Condition, CareTeam, and Observation resources."
* responsible = "New Zealand Health Information Standards Organisation (HISO)"
* name = "Rheumatic_fever_ccs_id"


/*
Instance: nzFacilitylegacy
InstanceOf: NamingSystem
Usage: #definition

* name = "NZFacilityLegacy"
* description = "Legacy number for Facility (Location) National Collections"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/nzhis-facility-id"
* uniqueId.preferred = true

*/

/*
Instance: nzOrganizationlegacy
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOrganizationLegacy"
* description = "Legacy number for Organization National Collections"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/nzhis-agency-id"
* uniqueId.preferred = true

*/

/*  a dupliation

//enrollment ID for national 
Instance: hpipractitionerrole
InstanceOf: NamingSystem
Usage: #definition
* type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National provider identifier"
* jurisdiction = urn:iso:std:iso:3166#NZ

* name = "HPIPractitionerRole"
* description = "NES Enrolment id"
* status = #active
* kind = #identifier
* date = "2021s-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/enrolment-id"
* uniqueId.preferred = true

*/
// NzEncounter examples - each shows how class / type / serviceType are populated,
// with the reason or clinical activity carried separately (reasonCode, Procedure, Immunization).
// Note: no suitable codes exist yet under 308335008 for "Procedure encounter" or
// "Immunisation encounter" (codes TBC), so those examples use type.text only.

//=== GP visit for flu/respiratory illness ===
Instance: encounter-gp-consultation
InstanceOf: NzEncounter
Description: "GP visit for flu/respiratory illness: AMB | Consultation | General practice service, with influenza-like illness as the reason"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#1237136005 "Consultation with patient"
* serviceType = http://snomed.info/sct#788007007 "General practice service"
* subject = Reference(Patient/patient-nhi)
* period.start = "2026-06-15T09:30:00+12:00"
* period.end = "2026-06-15T09:45:00+12:00"
* reasonCode = http://snomed.info/sct#95891005 "Influenza-like illness"


//=== Colonoscopy ===
Instance: encounter-colonoscopy
InstanceOf: NzEncounter
Description: "Colonoscopy: AMB | Procedure encounter | Endoscopy service, with the colonoscopy represented as a Procedure"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type.text = "Procedure encounter"
* serviceType = http://snomed.info/sct#310030000 "Endoscopy service"
* subject = Reference(Patient/patient-nhi)
* period.start = "2026-07-02T08:00:00+12:00"
* period.end = "2026-07-02T11:00:00+12:00"

Instance: procedure-colonoscopy
InstanceOf: Procedure
Description: "Colonoscopy performed during encounter-colonoscopy"
Usage: #example

* status = #completed
* code = http://snomed.info/sct#73761001 "Colonoscopy"
* subject = Reference(Patient/patient-nhi)
* encounter = Reference(Encounter/encounter-colonoscopy)
* performedDateTime = "2026-07-02T09:15:00+12:00"


//=== Cataract surgery ===
// class is SS when admitted as day surgery; AMB if genuinely outpatient without admission
Instance: encounter-cataract-surgery
InstanceOf: NzEncounter
Description: "Cataract surgery admitted as day surgery: SS | Procedure encounter | Ophthalmology service, with the cataract surgery represented as a Procedure"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#SS "short stay"
* type.text = "Procedure encounter"
* serviceType = http://snomed.info/sct#310160007 "Ophthalmology service"
* subject = Reference(Patient/patient-nhi)
* period.start = "2026-08-11T07:30:00+12:00"
* period.end = "2026-08-11T13:00:00+12:00"

Instance: procedure-cataract-surgery
InstanceOf: Procedure
Description: "Cataract surgery performed during encounter-cataract-surgery"
Usage: #example

* status = #completed
* code = http://snomed.info/sct#110473004 "Cataract surgery"
* subject = Reference(Patient/patient-nhi)
* encounter = Reference(Encounter/encounter-cataract-surgery)
* performedDateTime = "2026-08-11T10:00:00+12:00"


//=== Flu vaccination at pharmacy ===
Instance: organization-community-pharmacy
InstanceOf: NzOrganization
Description: "Example community pharmacy"
Usage: #example

* name = "Example Community Pharmacy"

Instance: encounter-pharmacy-flu-vaccination
InstanceOf: NzEncounter
Description: "Flu vaccination at pharmacy: AMB | Immunisation encounter | Immunisation service, with the vaccination represented as an Immunization and the pharmacy as the service provider"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type.text = "Immunisation encounter"
* serviceType = http://snomed.info/sct#171791000210102 "Immunisation service"
* subject = Reference(Patient/patient-nhi)
* serviceProvider = Reference(Organization/organization-community-pharmacy)
* period.start = "2026-04-20T14:00:00+12:00"
* period.end = "2026-04-20T14:20:00+12:00"

Instance: immunization-pharmacy-flu-vaccination
InstanceOf: Immunization
Description: "Influenza vaccination given during encounter-pharmacy-flu-vaccination"
Usage: #example

* status = #completed
* vaccineCode = http://snomed.info/sct#1181000221105 "Influenza virus antigen only vaccine product"
* patient = Reference(Patient/patient-nhi)
* encounter = Reference(Encounter/encounter-pharmacy-flu-vaccination)
* occurrenceDateTime = "2026-04-20T14:10:00+12:00"
* performer.actor = Reference(Organization/organization-community-pharmacy)


//=== Multidisciplinary meeting (MDM) ===
// Note: 399414003 is not a descendant of 308335008, so it falls outside the current (preferred) type binding
Instance: patient-zzz0008
InstanceOf: NzPatient
Description: "Patient with NHI ZZZ0008, discussed at a colorectal cancer MDM"
Usage: #example

* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[NHI].use = #official
* identifier[NHI].value = "ZZZ0008"
* name.family = "Ngata"
* name.given = "Aroha"
* name.text = "Aroha Ngata"
* birthDate = "1961-03-14"
* gender = #female

Instance: encounter-mdm
InstanceOf: NzEncounter
Description: "Colorectal cancer multidisciplinary meeting: AMB | Multidisciplinary care conference for cancer care planning | Oncology service, with the MDM members as participants"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#399414003 "Multidisciplinary care conference for cancer care planning"
* serviceType = http://snomed.info/sct#1335967008 "Oncology service"
* subject = Reference(Patient/patient-zzz0008)
* period.start = "2026-07-16T12:00:00+12:00"
* period.end = "2026-07-16T12:20:00+12:00"
* reasonCode = http://snomed.info/sct#363406005 "Malignant neoplasm of colon"

* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[=].individual = Reference(PractitionerRole/practitionerrole-mdm-oncologist)
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PART "Participation"
* participant[=].individual = Reference(PractitionerRole/practitionerrole-mdm-radiologist)
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PART "Participation"
* participant[=].individual = Reference(PractitionerRole/practitionerrole-mdm-pathologist)
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PART "Participation"
* participant[=].individual = Reference(PractitionerRole/practitionerrole-mdm-surgeon)
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PART "Participation"
* participant[=].individual = Reference(PractitionerRole/practitionerrole-mdm-nurse)

Instance: practitionerrole-mdm-oncologist
InstanceOf: PractitionerRole
Description: "Medical oncologist attending encounter-mdm"
Usage: #example

* practitioner.display = "Dr Mere Tane"
* code = http://snomed.info/sct#310512001 "Medical oncologist"

Instance: practitionerrole-mdm-radiologist
InstanceOf: PractitionerRole
Description: "Radiologist attending encounter-mdm"
Usage: #example

* practitioner.display = "Dr James Liu"
* code = http://snomed.info/sct#66862007 "Radiologist"

Instance: practitionerrole-mdm-pathologist
InstanceOf: PractitionerRole
Description: "Anatomic pathologist attending encounter-mdm"
Usage: #example

* practitioner.display = "Dr Sarah Patel"
* code = http://snomed.info/sct#83273008 "Anatomic pathologist"

Instance: practitionerrole-mdm-surgeon
InstanceOf: PractitionerRole
Description: "Colorectal surgeon attending encounter-mdm"
Usage: #example

* practitioner.display = "Dr Tom Walker"
* code = http://snomed.info/sct#309379003 "Colorectal surgeon"

Instance: practitionerrole-mdm-nurse
InstanceOf: PractitionerRole
Description: "Oncology nurse (cancer nurse coordinator) attending encounter-mdm"
Usage: #example

* practitioner.display = "Hana Wiremu"
* code = http://snomed.info/sct#224552008 "Oncology nurse"

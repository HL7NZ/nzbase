
ValueSet: PractitionerAdditionalAuthorization
Id: practitioner-additional-authorization
Title: "Additional Authorisation for functions that a Practitioner can perform"
Description: "A coded type for additional authorisations"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system https://standards.digital.health.nz/ns/practitioner-additional-authorization-code

CodeSystem: AdditionalAuthorization
Id: practitioner-additional-authorization
Title: "Additional Authorisation"
Description: "Additional authorisations that a practitioner is authorised to practice or prescribe."

* ^url = "https://standards.digital.health.nz/ns/practitioner-additional-authorization-code" 
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #CA01 "Cardiothoracic Surgery: Cardiothoracic Surgeon"
* #CA02 "Cardiothoracic Surgery: Transplant Surgeon"
* #DI01 "Diagnostic Imaging authorisation"
* #DP01 "Diabetes Prescriber"
* #EC01 "ECP authorisation"
* #FS01 "First Surgical Assistant"
* #IMMU "Immunisation"
* #INTR "Intravenous Infusions"
* #MD01 "Internal Medicine: Cardiologist"
* #MD02 "Internal Medicine: Endocrinologist"
* #MD03 "Internal Medicine: Gastroenterologist"
* #MD04 "Internal Medicine: Geriatrician"
* #MD05 "Internal Medicine: Infectious Disease Specialist"
* #MD06 "Internal Medicine: Nephrologist"
* #MD07 "Internal Medicine: Neurologist"
* #MD08 "Internal Medicine: Oncologist"
* #MD09 "Internal Medicine: Physician for the Elderly (FRACP)"
* #MD10 "Internal Medicine: Renal Physician"
* #MD11 "Internal Medicine: Respiratory Specialist"
* #MD12 "Internal Medicine: Rheumatologist"
* #NC01 "Prescribing authorisation"
* #NC02 "Nurse Colposcopist"
* #OG01 "Obstetrics and Gynaecology: Gynaecologist"
* #OG02 "Obstetrics and Gynaecology: Obstetrician"
* #ON01 "Radiation Oncology: Oncologist"
* #ON02 "Radiation Oncology: Radiation Oncologist"
* #PA01 "Paediatrics: Cardiologist"
* #PA02 "Paediatrics: Endocrinologist"
* #PA03 "Paediatrics: Gastroenterologist"
* #PA04 "Paediatrics: Geriatrician"
* #PA05 "Paediatrics: Infectious Disease Specialist"
* #PA06 "Paediatrics: Nephrologist"
* #PA07 "Paediatrics: Neurologist"
* #PA08 "Paediatrics: Oncologist"
* #PA09 "Paediatrics: Physician for the Elderly (FRACP)"
* #PA10 "Paediatrics: Renal Physician"
* #PA11 "Paediatrics: Respiratory Specialist"
* #PA12 "Paediatrics: Rheumatologist"
* #PS01 "Psychiatry: Psychiatrist"
* #PS02 "Psychiatry: Psychological Medicine Specialist"
* #SMEA "Smear Taker"


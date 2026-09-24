Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    """
The base New Zealand Encounter profile.

Encounters are categorised in NZ using three independent axes: `class`, `type` and `serviceType`. The reason for the encounter and any clinical procedure performed are separate to these classifications (e.g. `reasonCode`, `Condition`, `Procedure`, `Immunization`).

| FHIR Element | Axis / What it categorises | Question it answers | Examples |
|---|---|---|---|
| class | Encounter context / setting | In what broad care context is this encounter occurring? | ambulatory, emergency, acute inpatient, non-acute inpatient, home health, virtual, field, short stay |
| type | Kind of interaction / encounter event | What kind of encounter is this? | annual visit, initial consultation, follow-up consultation, review, assessment |
| serviceType | Health service / service line | What health service is being provided? | general practice service, endoscopy service, clinical pharmacology service |
"""

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NzEncounter"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #draft
* ^version = "1.0.0"

// class: keep the base binding (v3 ActEncounterCode)
* class ^short = "Broad care context of the encounter (e.g. AMB, EMER, ACUTE, NONAC, HH, VR)"
* class ^definition = "The broad care context in which the encounter occurs, particularly the patient's relationship to the care setting, such as ambulatory, emergency, inpatient, home-based or virtual care. It does not identify the clinical service being provided or the specific purpose/type of interaction."

// type: interim binding to descendants of 308335008 |Patient encounter procedure| - to be constrained to an NZ Encounter Type refset
* type from http://snomed.info/sct?fhir_vs=isa/308335008 (preferred)
* type ^short = "Specific kind or purpose of the encounter (e.g. initial consultation, follow-up, annual visit)"
* type ^definition = "The specific kind or purpose of healthcare interaction represented by the Encounter, independently of the broad care context (class), the health service providing it (serviceType), and the clinical problem, reason or procedure. Type should add information that isn't already carried by class or serviceType - there is no requirement to populate it when there isn't a useful additional classification."

// serviceType: NZ Health Service Type refset
* serviceType from http://snomed.info/sct/21000210109?fhir_vs=refset/461000210102 (extensible)
* serviceType ^short = "Health service being provided (e.g. general practice service, endoscopy service)"
* serviceType ^definition = "The health service or service function within which care is provided. It describes the service being delivered, rather than the encounter context or the particular kind of interaction."

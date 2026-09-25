Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    """
The base Encounter profile for New Zealand.

### Categorising encounters

NZ Base categorises an encounter using the three elements provided by FHIR R4. Each is intended to answer a different question about the encounter. The terminologies bound to these elements, however, do not always keep those questions separate; for example, `class` includes `PRENC` (pre-admission), which describes the purpose of the encounter rather than its care setting. NZ Base keeps the three elements as orthogonal as the current model allows, but some overlap is unavoidable. The three elements are:

| Element | Question it answers | Examples |
|---|---|---|
| `class` | In what care setting does the encounter occur? | ambulatory, emergency, inpatient, home, virtual |
| `type` | What kind of encounter is it? | initial consultation, follow-up, annual review, assessment |
| `serviceType` | What health service is being provided? | general practice, endoscopy, immunisation |

The reason for the encounter, and any procedures, immunisations or other interventions, are not part of this categorisation. Record them in `reasonCode` or `reasonReference`, or in resources such as `Condition`, `Procedure` or `Immunization` that reference the encounter.

#### `class`

`class` is required (1..1 in R4) and uses the base FHIR binding to v3 ActEncounterCode. It describes the patient's relationship to the care setting.

| Code | Display | Use for |
|---|---|---|
| `AMB` | ambulatory | Patient not admitted, e.g. general practice, outpatient clinic, community pharmacy |
| `EMER` | emergency | Emergency department |
| `FLD` | field | Outside both a healthcare facility and the patient's home, e.g. ambulance attendance at the scene |
| `HH` | home health | In the patient's home, e.g. district nursing |
| `VR` | virtual | Patient and clinician not in the same place, e.g. video or phone |
| `SS` | short stay | Day-case admission, e.g. day surgery |
| `ACUTE` | inpatient acute | Admission for acute care |
| `NONAC` | inpatient non-acute | Admission for non-acute care, e.g. rehabilitation |
| `IMP` | inpatient encounter | Admission where `ACUTE` or `NONAC` is not known |
| `OBSENC` | observation encounter | Observation without inpatient admission |
| `PRENC` | pre-admission | Pre-admission assessment |

`ACUTE` in FHIR describes the kind of care, not whether the admission was planned (which is not always how acute is used in practice in NZ). An elective surgical admission is `ACUTE`. Record planned or unplanned using `priority`.

#### `serviceType`

`serviceType` records the health service being provided. It has an extensible binding to the NZ Health Service Type reference set (`461000210102`), for example:

* `788007007` General practice service
* `659831000210108` Hospital-based orthopaedic outpatient service
* `171791000210102` Immunisation service
* `537311000210105` Maternal mental health service

The organisation providing the service, such as a pharmacy, is recorded in `serviceProvider`, not `serviceType`.

`serviceType` may overlap with linked resources. For example, an encounter with `serviceType` *Immunisation service* will usually have a linked `Immunization`. This is expected: it lets the encounter be understood without resolving what it links to.

#### `type`

`type` records the kind of encounter where `class` and `serviceType` do not already convey it. For example, it distinguishes whether a general practice encounter is an initial consultation, a follow-up or an annual review.

`type` is optional. Omit it where it would only restate `class` or `serviceType`. Encounters for a single procedure or immunisation usually have no `type`.

`type` has an interim preferred binding to descendants of SNOMED CT `308335008 |Patient encounter procedure|`. Many concepts in this hierarchy also imply a setting, service or clinical problem. Prefer concepts that describe only the kind of encounter. An NZ Encounter Type reference set is planned.

### Examples

| Scenario | `class` | `type` | `serviceType` | Recorded elsewhere |
|---|---|---|---|---|
| [GP consultation for respiratory illness](Encounter-encounter-gp-consultation.html) | AMB | Consultation | General practice service | Symptoms or diagnosis in `reasonCode` or `Condition` |
| Orthopaedic outpatient follow-up | AMB | Follow-up encounter | Hospital-based orthopaedic outpatient service | |
| [Flu vaccination at a community pharmacy](Encounter-encounter-pharmacy-flu-vaccination.html) | AMB | *(none)* | Immunisation service | Vaccination in `Immunization`; pharmacy in `serviceProvider` |
| [Outpatient colonoscopy](Encounter-encounter-colonoscopy.html) | AMB | *(none)* | Endoscopy service | Colonoscopy in `Procedure` |
| [Day-case cataract surgery](Encounter-encounter-cataract-surgery.html) | SS | *(none)* | Ophthalmology service | Cataract extraction in `Procedure` |
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

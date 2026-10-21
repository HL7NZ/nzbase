Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    """
The base Encounter profile for New Zealand.

### Categorising encounters

FHIR categorises an encounter using the three elements in R4. Ideally, each would answer a different question about the encounter. The terminologies bound to these elements, however, do not always keep those questions entirely separate. NZ Base should attempt to keep the three elements as orthogonal as the current model allows, even if some overlap is unavoidable. The three elements are:

| Element | Question it answers | Examples |
|---|---|---|
| `class` | In what care setting does the encounter occur? | ambulatory, emergency, inpatient, home, virtual |
| `serviceType` | What health service is being provided? | general practice, endoscopy, immunisation |
| `type` | What kind of encounter is it? | initial consultation, follow-up, annual review, assessment |

The reason for the encounter, and any procedures, immunisations or other interventions, are not part of this categorisation. Record them in `reasonCode` or `reasonReference`, or in resources such as `Condition`, `Procedure` or `Immunization` that reference the encounter. The `type` element is the broadest of these three, with significant scope for covering more than one dimension if not carefully constrained. Typically, in FHIR, it is used where `class` and `serviceType` do not already convey enough information about the kind of encounter. For example, a general practice encounter may be described with a `class` of `AMB` and a `serviceType` of *General practice service*, but the `type` may distinguish whether it is an initial consultation, a follow-up or an annual review - or if such distinctions are not relevant, `type` may be omitted.

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

In NZ, "acute" often means an unplanned admission, as opposed to an elective one. In FHIR, `ACUTE` means acute-care inpatient treatment, as opposed to non-acute care such as rehabilitation (`NONAC`). It describes the kind of care, not whether the admission was planned, so an elective surgical admission is `ACUTE`. Record planned or unplanned using `priority`. NZ Base could just use IMP or it could decide to just use ACUTE and NONAC, to reduce confusion. Or all three could be used, with IMP for when the care type is unknown. This should be based on requiements. 

#### `serviceType`

`serviceType` records the health service being provided. The suggested extensible binding is to the NZ Health Service Type SNOMED CT reference set (`461000210102`), for example:

* `788007007` General practice service
* `659831000210108` Hospital-based orthopaedic outpatient service
* `171791000210102` Immunisation service
* `537311000210105` Maternal mental health service

The organisation providing the service, such as a pharmacy, is recorded in `serviceProvider`, not `serviceType`.

`serviceType` may overlap with linked resources. For example, an encounter with `serviceType` *Immunisation service* will usually have a linked `Immunization`. This is expected: it lets the encounter be understood without resolving what it links to.

#### `type`

`type` records the kind of encounter where `class` and `serviceType` do not already convey it. For example, it distinguishes whether a general practice encounter is an initial consultation, a follow-up or an annual review.

`type` is optional. It should be ommitted where it would only restate information already present in `class` or `serviceType`. So, for example Encounters for a single procedure or immunisation usually have no `type`.

`type` has an suggested binding to descendants of SNOMED CT `308335008 |Patient encounter procedure|`. Many concepts in this hierarchy also imply a setting, service or clinical problem. Prefer concepts that describe only the kind of encounter. Constraining the concepts allowed for `type` is recommended to ensure consistency.

### Examples

| Scenario | `class` | `type` | `serviceType` | Recorded elsewhere |
|---|---|---|---|---|
| [GP consultation for respiratory illness](Encounter-encounter-gp-consultation.html) | AMB | Consultation | General practice service | Symptoms or diagnosis in `reasonCode` or `Condition` |
| [Orthopaedic outpatient follow-up](Encounter-encounter-orthopaedic-follow-up.html) | AMB | Follow-up encounter | Hospital-based orthopaedic outpatient service | |
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

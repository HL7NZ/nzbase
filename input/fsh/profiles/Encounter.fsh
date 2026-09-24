Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    """
The base New Zealand Encounter profile.

### Categorising encounters

Accurately capturing the nature of encounters is important for clinical, administrative, and reporting purposes.

The base FHIR Encounter resource provides three distinct elements, each with its own terminology, for categorising encounters: `class`, `type`, and `serviceType`. Without further explanation, the intended meaning of these elements, and how they should be used together, may not be immediately obvious in the context of the New Zealand health system.

However, there is no pre-existing New Zealand-specific encounter classification model to adopt instead. Trying to capture the variety and full character of encounters using a single classification would also require mixing different concerns and categories of concepts within a single taxonomy. A single classification could represent these different characteristics, but doing so would either require compound concepts representing combinations of characteristics, potentially resulting in a very large number of concepts, or place concepts representing different dimensions together within the same classification. Representing these dimensions separately allows them to vary independently and makes their intended semantics explicit.

The FHIR Encounter instead uses three distinct dimensions, or axes, to categorise encounters in a way that can be applied across different health system contexts. NZ Base adopts these as the basis for encounter classification. Each represents a distinct aspect of the encounter: `class` describes the broad care context or setting, `type` describes the specific kind or purpose of the encounter, and `serviceType` describes the health service being provided. Used together, they provide a comprehensive way to classify the nature of an encounter without conflating these different dimensions.

The following table summarises the three FHIR categorisation elements, what each categorises, and the question it is intended to answer.

| FHIR Element  | Axis / What it categorises    | Question it answers                                   | Examples                                                                                             |
| ------------- | ----------------------------- | ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `class`       | Encounter context / setting   | In what broad care context does this encounter occur? | ambulatory, emergency, acute inpatient, non-acute inpatient, home health, virtual, field, short stay |
| `type`        | Kind or purpose of encounter  | What kind of encounter is this?                       | annual visit, initial consultation, follow-up consultation, review, assessment                       |
| `serviceType` | Health service / service line | What health service is being provided?                | general practice service, endoscopy service, clinical pharmacology service                           |

The reason for the encounter and any clinical procedures or interventions performed are separate from these classifications. They are represented elsewhere, for example using `reasonCode` or `reasonReference`, or through resources such as `Condition`, `Procedure`, or `Immunization` that reference the Encounter.


#### `Encounter.class`

`Encounter.class` represents the broad care context in which the encounter occurs, particularly the patient's relationship to the care setting. Examples include ambulatory, emergency, inpatient, home-based, and virtual care. It does not identify the clinical service being provided or the specific kind or purpose of the encounter.

`class` is mandatory (`1..1`) and retains the base FHIR binding to the **v3 ActEncounterCode** value set.

| Code | Display | Example classifications |
|---|---|---|
| `AMB` | ambulatory | GP consultation, specialist outpatient appointment, physiotherapy clinic visit |
| `EMER` | emergency | emergency department encounter |
| `FLD` | field | care delivered in a field or community setting |
| `HH` | home health | district nursing visit in the patient's home |
| `IMP` | inpatient encounter | inpatient encounter where a more specific inpatient class is not used |
| `ACUTE` | inpatient acute | acute inpatient admission |
| `NONAC` | inpatient non-acute | rehabilitation or other non-acute inpatient admission |
| `OBSENC` | observation encounter | observation stay |
| `PRENC` | pre-admission | pre-admission assessment |
| `SS` | short stay | day surgery or other planned short-stay admission |
| `VR` | virtual | video or other remote consultation |

`ACUTE` and `NONAC` are more specific subtypes of `IMP` and should be used in preference to `IMP` when the more specific classification is known.

#### `Encounter.type`

`Encounter.type` describes the specific kind or purpose of healthcare interaction represented by the Encounter, independently of the broad care context, the health service being provided, and the clinical problem, reason, or procedure.

* `type` should add information that is not already represented by `class` or `serviceType`. For example, `class` = `AMB` and `serviceType` = *General practice service* do not indicate whether the encounter was an initial consultation, annual review, or follow-up. `type` provides this additional classification.
* `type` is optional (`0..*`). There is no requirement to assign a type where it would not provide useful additional information.
* Avoid duplicating information represented elsewhere. For example, do not use a *telemedicine consultation* type solely to repeat `class` = `VR`, or a *colonoscopy encounter* type where the colonoscopy itself is recorded as a `Procedure`.

Examples of encounter types include annual visit, initial consultation, follow-up consultation, clinical review, assessment, and multidisciplinary review.

`type` is currently bound with **preferred** strength to a value set comprising descendants of SNOMED CT `308335008 |Patient encounter procedure|`. This is an interim binding. An NZ Encounter Type reference set is planned, seeded from this hierarchy but constrained to concepts that describe the nature or purpose of the healthcare interaction, independently of the care context, health service, clinical problem, or specific clinical intervention.

#### `Encounter.serviceType`

`Encounter.serviceType` identifies the health service or service function within which care is provided. It describes the service being delivered, rather than the broad care context or the specific kind or purpose of the encounter.

`serviceType` is bound with **extensible** strength to the **NZ Health Service Type** SNOMED CT NZ Edition reference set (`461000210102`). Examples include:

* `788007007` General practice service
* `609111000210100` Aged residential care general practice service
* `659831000210108` Hospital-based orthopaedic outpatient service
* `171791000210102` Immunisation service
* `537311000210105` Maternal mental health service
* `302021000210109` NASC - Needs assessment and service coordination service

### Examples of encounter classifications

| Scenario | class | type | serviceType | Other clinically important information |
|---|---|---|---|---|
| [GP visit for flu/respiratory illness](Encounter-encounter-gp-consultation.html) | AMB | Consultation | General practice service | respiratory symptoms / influenza-like illness in `reasonCode` or Condition |
| [Colonoscopy](Encounter-encounter-colonoscopy.html) | AMB | Procedure encounter | Endoscopy service | colonoscopy itself represented as Procedure |
| [Cataract surgery](Encounter-encounter-cataract-surgery.html) | SS if admitted as day surgery; AMB if genuinely outpatient without admission | Procedure encounter | Ophthalmology service | cataract extraction/lens procedure represented as Procedure |
| [Flu vaccination at pharmacy](Encounter-encounter-pharmacy-flu-vaccination.html) | AMB | Immunisation encounter | Immunisation service | influenza vaccination represented as Immunization; pharmacy is the provider/location |
| [Cancer multidisciplinary meeting](Encounter-encounter-mdm.html) | AMB | Multidisciplinary care conference for cancer care planning | Oncology service | MDM members recorded as participants; cancer diagnosis in `reasonCode` |
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

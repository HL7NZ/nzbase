Profile:        NzEncounter
Parent:         Encounter
Id:             NzEncounter
Title:          "NZ Encounter"
Description:    """
The base New Zealand Encounter profile.

### Categorising encounters

Encounters are categorised here using three independent axes: `class`, `type` and `serviceType`. Each answers a different question, and values should not be repeated across them.

| FHIR Element | Axis / What it categorises | Question it answers | Examples |
|---|---|---|---|
| class | Encounter context / setting | In what broad care context is this encounter occurring? | ambulatory, emergency, acute inpatient, non-acute inpatient, home health, virtual, field, short stay |
| type | Kind of interaction / encounter event | What kind of encounter is this? | annual visit, initial consultation, follow-up consultation, review, assessment |
| serviceType | Health service / service line | What health service is being provided? | general practice service, endoscopy service, clinical pharmacology service |

The reason for the encounter and any clinical procedure performed are **separate** to these classifications. They are recorded elsewhere, e.g. in `reasonCode` / `reasonReference`, or as `Condition`, `Procedure` or `Immunization` resources that reference the Encounter.

#### `Encounter.class`

`Encounter.class` represents the broad care context in which the encounter occurs, particularly the patient's relationship to the care setting, such as ambulatory, emergency, inpatient, home-based or virtual care. It does not identify the clinical service being provided or the specific purpose/type of interaction.

`class` is mandatory (1..1) and uses the base FHIR binding to the v3 ActEncounterCode value set:

| Code | Display | Example classifications |
|---|---|---|
| AMB | ambulatory | GP consultation, specialist outpatient, physiotherapy clinic |
| EMER | emergency | ED encounter |
| FLD | field | |
| HH | home health | district nursing home visit |
| IMP | inpatient | |
| ACUTE | inpatient acute | acute admission |
| NONAC | inpatient non-acute | rehabilitation admission |
| OBSENC | observation | |
| PRENC | pre-admission | |
| SS | short stay | day surgery admission |
| VR | virtual | video consultation |

ACUTE and NONAC are more specific kinds of IMP and should be preferred when known. No NZ-specific class codes are added. For example, a residential aged care setting (added as a class in AU Base) is better conveyed through `serviceType`, e.g. *Aged residential care general practice service*.

#### `Encounter.type`

`Encounter.type` describes the specific kind or purpose of healthcare interaction represented by the Encounter, independently of the broad care context, the health service providing it, and the clinical problem, reason or procedure.

* `type` should add information that isn't already carried by `class` or `serviceType`. For example, `class` = AMB and `serviceType` = *General practice service* doesn't tell you whether this was a new-patient consultation, an annual review or a follow-up. `type` carries that purpose or kind information.
* `type` is optional (0..\*). There is no requirement to invent a type when there isn't a useful additional classification.
* Avoid duplicating other elements in `type`, e.g. a "telemedicine consultation" type on an encounter that already has `class` = VR, or a "colonoscopy encounter" type where the colonoscopy is recorded as a Procedure.

Examples of encounter types include: annual visit, initial consultation, follow-up consultation, clinical review, assessment and multidisciplinary review.

`type` is currently bound (preferred) to descendants of SNOMED CT 308335008 |Patient encounter procedure|. This is an interim binding. An NZ Encounter Type reference set is planned, seeded from 308335008 but constrained to concepts describing the nature or purpose of the patient–healthcare interaction, independently of the care context, health service, clinical problem or specific clinical intervention.

#### `Encounter.serviceType`

`Encounter.serviceType` identifies the health service or service function within which care is provided. It describes the service being delivered, rather than the encounter context or the particular kind of interaction.

`serviceType` is bound (extensible) to the NZ Health Service Type SNOMED CT NZ edition reference set (461000210102). Examples include:

* 788007007 General practice service
* 609111000210100 Aged residential care general practice service
* 659831000210108 Hospital-based orthopaedic outpatient service
* 171791000210102 Immunisation service
* 537311000210105 Maternal mental health service
* 302021000210109 NASC - Needs assessment and service coordination service

### Worked examples

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

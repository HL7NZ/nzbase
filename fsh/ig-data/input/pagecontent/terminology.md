### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

| CodeSystem | Purpose | Url |
| --- | --- | --- |
| [Citizenship](CodeSystem-citizenShipStatus.html) | Codes that indicate the NZ Citizenship status | https://standards.digital.health.nz/cs/citizenshipstatus |
| [DHB](CodeSystem-dhb.html) | The list of District Health Boards | https://standards.digital.health.nz/cs/dhb-code |
| [Domicile Code](CodeSystem-domicileCode.html) | The domicile code referring for an address | https://standards.digital.health.nz/cs/domicileCode |
| [Ethnicity](CodeSystem-ethnicityL4.html) | The set of NZ ethnicity codes | https://standards.digital.health.nz/cs/ethnic-group-level-4 |
| [Information Source](CodeSystem-infosource.html) | Codes that indicate where a specific bit of information came from - eg a passport or birth certificate  | http://standards.digital.health.nz/cs/infosource |
| [Iwi](CodeSystem-Iwi.html) | New Zealand Maori tribes |  |


### ValueSets

Valuesets are selectors of concepts (represened as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.

| ValueSet | Purpose | Url |
| --- | --- | --- |
| [Citizenship](ValueSet-citizenshipStatus.html) | Selects all the Citizenship status codes| http:/hl7.org.nz/fhir/ValueSet/citizenshipstatus |
| [DHB](ValueSet-dhb.html) | Selects all the DHBs | ttp:/hl7.org.nz/fhir/ValueSet/dhb |
| [Domicile Code](ValueSet-domicileCode.html) | Selects all the domicile codes | https://standards.digital.health.nz/cs/domicileCode |
| [Ethnicity](ValueSet-ethnicity.html) | All the ethnicity codes | http:/hl7.org.nz/fhir/ValueSet/ethnic-group-level-4 |
| [Information Source](ValueSet-infosource.html) | All the information source codes  | http:/hl7.org.nz/fhir/ValueSet/infosource |
| [Iwi](ValueSet-Iwi.html) | All the Iwi | http:/hl7.org.nz/fhir/ValueSet/iwi  |
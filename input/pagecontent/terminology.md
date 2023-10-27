### ValueSets

These are ValueSets that have been defined in this guide for coded elements. 

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it. 
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure 
to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR.


<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Canonical url</th></tr>
<tr><td width='20%'><a href='ValueSet-acc-patient-occupation-valueset.html'>ACC Patient Occupation</a></td><td><p>ValueSet of codes for classifying patient occupations, drawn from the ACC codeset</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/acc-patient-occupation-code</td></tr>
<tr><td width='20%'><a href='ValueSet-citizenship-status.html'>NZ Citizenship status</a></td><td><p>Citizenship status</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code</td></tr>
<tr><td width='20%'><a href='ValueSet-contact-point-purpose.html'>ContactPoint purpose</a></td><td><p>The purpose of a ContactPoint - what it is used for.</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/contact-point-purpose-code</td></tr>
<tr><td width='20%'><a href='ValueSet-coverage-category.html'>Coverage Category</a></td><td><p>New Zealand codes for Coverage category types</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/coverage-category-code</td></tr>
<tr><td width='20%'><a href='ValueSet-coverage-type.html'>Coverage Type</a></td><td><p>New Zealand codes for Coverage Types</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code</td></tr>
<tr><td width='20%'><a href='ValueSet-datumCode.html'>Datum code</a></td><td><p>Datum codes used</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/nz-datum-code</td></tr>
<tr><td width='20%'><a href='ValueSet-dhb.html'>District Health Board Identifer</a></td><td><p>District Health Board Identifer. Assigned by the HPI.</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/dhb-code</td></tr>
<tr><td width='20%'><a href='ValueSet-dod-information-source.html'>Death date Information Source</a></td><td><p>The source from where the date of death was sourced</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/dod-information-source-code</td></tr>
<tr><td width='20%'><a href='ValueSet-domicile-code.html'>Domicile Code</a></td><td><p>Domicile Code</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/domicile-code</td></tr>
<tr><td width='20%'><a href='ValueSet-ethnicity.html'>Ethnicity of a person (L4)</a></td><td><p>Codes to record a person&#39;s ethnicity, drawn from <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">Level 4 of the Ethnicity code system</a></p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code</td></tr>
<tr><td width='20%'><a href='ValueSet-ethnicityfull.html'>Ethnicity of a person (full)</a></td><td><p>Codes to record a person&#39;s ethnicity, drawn from <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">All of the Ethnicity code system</a></p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/nz-ethnic-group-code</td></tr>
<tr><td width='20%'><a href='ValueSet-funded-programme.html'>Funded Programme</a></td><td><p>Some sort of funded programme</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/funded-programme-code</td></tr>
<tr><td width='20%'><a href='ValueSet-hpi-practitionerrole-status-reason.html'>PractitionerRole status reason</a></td><td><p>The reason for the current status of PractitionerRole</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code</td></tr>
<tr><td width='20%'><a href='ValueSet-information-source.html'>Information Source</a></td><td><p>The source from where the value of this item was sourced</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code</td></tr>
<tr><td width='20%'><a href='ValueSet-iwi.html'>Iwi</a></td><td><p>New Zealand iwi codes.  The 2 digit codes are abstract codes and provided in the expansion for navigational purposes. A user should not select an abstract code directly as a proper value.</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/iwi-code</td></tr>
<tr><td width='20%'><a href='ValueSet-location-alias-type.html'>Alias types</a></td><td><p>The complete set of alias types that apply to Locations and Organizations</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/alias-type-code</td></tr>
<tr><td width='20%'><a href='ValueSet-maori-descent-valueset.html'>Māori Descent</a></td><td><p>A code indicating whether a person is of Māori descent</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/maori-descent</td></tr>
<tr><td width='20%'><a href='ValueSet-nhi-use.html'>Valid use values for NHI</a></td><td><p>NHI Use codes</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/nhi-use-code</td></tr>
<tr><td width='20%'><a href='ValueSet-nz-residency.html'>NZ Residency status</a></td><td><p>Is the person a NZ resident</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-code</td></tr>
<tr><td width='20%'><a href='ValueSet-pho.html'>PHO</a></td><td><p>Primary Healthcare Organization</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/pho-code</td></tr>
<tr><td width='20%'><a href='ValueSet-practitioner-additional-authorisation-code.html'>Additional Practitioner authorisations</a></td><td><p>A coded type for additional authorisations</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code</td></tr>
<tr><td width='20%'><a href='ValueSet-practitioner-registration-status-code.html'>Registration Status of Practitioners</a></td><td><p>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code</td></tr>
<tr><td width='20%'><a href='ValueSet-practitioner-scope-of-practice.html'>Scope of practice</a></td><td><p>A coded type for professional scope of practice.</p></td><td>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code</td></tr>
</table>
<br/><br/>
### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>Canonical Url</th></tr>
<tr><td width='20%'><a href='CodeSystem-Ethnicity.html'>NZ ethnic group codes</a></td><td><p>A FHIR CodeSystem of Australian and Ethnicity New Zealand Standard Classification</p></td><td>https://standards.digital.health.nz/ns/nz-ethnic-group-codes</td></tr>
<tr><td width='20%'><a href='CodeSystem-acc-patient-occupation-codesystem.html'>ACC Patient Occupation CodeSystem</a></td><td><p>Codes for classifying patient occupations, drawn from the ACC codeset</p></td><td>https://standards.digital.health.nz/ns/acc-patient-occupation-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-alias-type.html'>Type of Alias</a></td><td><p>Used in Organization and Location to indicate what is the type of Alias</p></td><td>https://standards.digital.health.nz/ns/alias-type-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-citizenship-status.html'>NZ Citizenship status</a></td><td><p>Is this person a NZ Citizen</p></td><td>https://standards.digital.health.nz/ns/nz-citizenship-status-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-contact-point-purpose.html'>ContactPoint purpose</a></td><td><p>The purpose of a ContactPoint - what it is used for.</p></td><td>https://standards.digital.health.nz/ns/contact-point-purpose-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-coverage-category.html'>Coverage category</a></td><td><p>New Zealand codes for Coverage category types</p></td><td>https://standards.digital.health.nz/ns/coverage-category-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-coverage-type.html'>Coverage type</a></td><td><p>New Zealand codes for Coverage Types</p></td><td>https://standards.digital.health.nz/ns/coverage-type-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-datum-code.html'>Datum codes</a></td><td><p>Possible datum codes</p></td><td>https://standards.digital.health.nz/ns/nz-datum-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-dhb-code.html'>NZ DHB</a></td><td><p>NZ District Health Board (HPI-ORG) Codes</p></td><td>https://standards.digital.health.nz/ns/dhb-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-domicile-code.html'>Domicile Code</a></td><td><p>Domicile Code</p></td><td>https://standards.digital.health.nz/ns/domicile-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-ethnicityL4.html'>Level 4 ethnicity codes</a></td><td><p>Codes to record a person’s ethnicity, drawn from Level 4 of the Ethnicity code system 
described <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">here</a></p></td><td>https://standards.digital.health.nz/ns/ethnic-group-level-4-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-funded-programme.html'>Funded Programme</a></td><td><p>Some sort of funded programme</p></td><td>https://standards.digital.health.nz/ns/funded-programme-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-hpi-practitionerRole-status-reason.html'>PractitionerRole status reason</a></td><td><p>The reason for the current status of PractitionerRole</p></td><td>https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-information-source.html'>Information Source</a></td><td><p>All possible sources of information</p></td><td>https://standards.digital.health.nz/ns/information-source-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-iwi-code.html'>NZ Iwi</a></td><td><p>NZ Iwi Statistical Standard: 27 May 2022.</p></td><td>https://standards.digital.health.nz/ns/iwi-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-maori-descent-codesystem.html'>Māori Descent</a></td><td><p>Codes for classifying Māori descent. Defined by Stats NZ - Census Māori descent v2.0.0</p></td><td>https://standards.digital.health.nz/ns/maori-descent-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-nz-residency.html'>NZ Residency status</a></td><td><p>NZ Residency status</p></td><td>https://standards.digital.health.nz/ns/nz-residency-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-pho-status.html'>PHO</a></td><td><p>Primary Healthcare Organization</p></td><td>https://standards.digital.health.nz/ns/pho-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-practitioner-additional-authorisation.html'>Additional Authorisation</a></td><td><p>Additional authorisations that a practitioner is authorised to practice or prescribe.</p></td><td>https://standards.digital.health.nz/ns/practitioner-additional-authorisation-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-practitioner-registration-status-code.html'>Registration Status of Practitioners</a></td><td><p>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</p></td><td>https://standards.digital.health.nz/ns/practitioner-registration-status-code</td></tr>
<tr><td width='20%'><a href='CodeSystem-scopeOfPractice.html'>Scope of practice</a></td><td><p>A classification of the type or range of health services that a practitioner is authorised to provide, as determined by the Responsible Authority or other statutory authority (e.g. PHARMAC), that is, what the practitioner can or cannot do. It includes Scope of Practice as defined by the Health Practitioners Competence Assurance Act 2003, any special authorisations granted, and any conditions or limitations imposed by the Responsible Authority.</p></td><td>https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code</td></tr>
</table>
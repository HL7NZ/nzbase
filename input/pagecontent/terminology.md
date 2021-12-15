### ValueSets

These are ValueSets that have been defined in this guide for coded elements. 

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it. 
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure 
to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR.


<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Canonical url</th></tr>
<tr><td width='20%'>Additional activities that a Practitioner is authorised to perform</td><td><p>A coded type for additional authorisations</p></td><td><a href='ValueSet-practitioner-additional-authorisation-code.html'>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code</a></td></tr>
<tr><td width='20%'>All the possible alias types</td><td><p>The complete set of alias types that apply to Locations and Organizations</p></td><td><a href='ValueSet-location-alias-type.html'>https://nzhts.digital.health.nz/fhir/ValueSet/alias-type-code</a></td></tr>
<tr><td width='20%'>Death date Information Source</td><td><p>The source from where the date of death was sourced</p></td><td><a href='ValueSet-dod-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/dod-information-source-code</a></td></tr>
<tr><td width='20%'>District Health Board Identifer</td><td><p>District Health Board Identifer. Assigned by the HPI.</p></td><td><a href='ValueSet-dhb.html'>https://nzhts.digital.health.nz/fhir/ValueSet/dhb-code</a></td></tr>
<tr><td width='20%'>Ethnicity of a person</td><td><p>Codes to record a person&#39;s ethnicity, drawn from <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">Level 4 of the Ethnicity code system</a></p></td><td><a href='ValueSet-ethnicity.html'>https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>Funded Programme</td><td><p>Some sort of funded programme</p></td><td><a href='ValueSet-funded-programme.html'>https://nzhts.digital.health.nz/fhir/ValueSet/funded-programme-code</a></td></tr>
<tr><td width='20%'>Information Source</td><td><p>The source from where the value of this item was sourced</p></td><td><a href='ValueSet-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code</a></td></tr>
<tr><td width='20%'>NZ Citizenship status</td><td><p>Citizenship status</p></td><td><a href='ValueSet-citizenship-status.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>Is the person a NZ resident</p></td><td><a href='ValueSet-nz-residency-status.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-status-code</a></td></tr>
<tr><td width='20%'>PHO</td><td><p>Primary Healthcare Organization</p></td><td><a href='ValueSet-pho.html'>https://nzhts.digital.health.nz/fhir/ValueSet/pho-code</a></td></tr>
<tr><td width='20%'>PractitionerRole status reason</td><td><p>The reason for the current status of PractitionerRole</p></td><td><a href='ValueSet-hpi-practitionerrole-status-reason.html'>https://nzhts.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code</a></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td><p>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</p></td><td><a href='ValueSet-practitioner-registration-status-code.html'>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code</a></td></tr>
<tr><td width='20%'>Scope of practice</td><td><p>A coded type for professional scope of practice.</p></td><td><a href='ValueSet-practitioner-scope-of-practice.html'>https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>Domicile Code</p></td><td><a href='ValueSet-domicile-code.html'>https://nzhts.digital.health.nz/fhir/ValueSet/domicile-code</a></td></tr>
</table>
<br/><br/>
### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>Canonical Url</th></tr>
<tr><td width='20%'>District Health Board Code</td><td><p>District Health Board code table.</p></td><td><a href='CodeSystem-Dhb-code.html'>https://standards.digital.health.nz/ns/dhb-code</a></td></tr>
<tr><td width='20%'>Type of Alias</td><td><p>Used in Organization and Location to indicate what is the type of Alias</p></td><td><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/ns/alias-type-code</a></td></tr>
<tr><td width='20%'>NZ Citizenship status</td><td><p>Is this person a NZ Citizen</p></td><td><a href='CodeSystem-citizenship-status.html'>https://standards.digital.health.nz/ns/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>Domicile Code</p></td><td><a href='CodeSystem-domicile-code.html'>https://standards.digital.health.nz/ns/domicile-code</a></td></tr>
<tr><td width='20%'>Level 4 ethnicity codes</td><td><p>Codes to record a person’s ethnicity, drawn from Level 4 of the Ethnicity code system 
described <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">here</a></p></td><td><a href='CodeSystem-ethnicityL4.html'>https://standards.digital.health.nz/ns/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>Funded Programme</td><td><p>Some sort of funded programme</p></td><td><a href='CodeSystem-funded-programme.html'>https://standards.digital.health.nz/ns/funded-programme-code</a></td></tr>
<tr><td width='20%'>PractitionerRole status reason</td><td><p>The reason for the current status of PractitionerRole</p></td><td><a href='CodeSystem-hpi-practitionerRole-status-reason.html'>https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code</a></td></tr>
<tr><td width='20%'>Information Source</td><td><p>All possible sources of information</p></td><td><a href='CodeSystem-information-source.html'>https://standards.digital.health.nz/ns/information-source-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>NZ Residency status</p></td><td><a href='CodeSystem-nz-residency-status.html'>https://standards.digital.health.nz/ns/nz-residency-status-code</a></td></tr>
<tr><td width='20%'>PHO</td><td><p>Primary Healthcare Organization</p></td><td><a href='CodeSystem-pho-status.html'>https://standards.digital.health.nz/ns/pho-code</a></td></tr>
<tr><td width='20%'>Additional Authorisation</td><td><p>Additional authorisations that a practitioner is authorised to practice or prescribe.</p></td><td><a href='CodeSystem-practitioner-additional-authorisation.html'>https://standards.digital.health.nz/ns/practitioner-additional-authorisation-code</a></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td><p>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</p></td><td><a href='CodeSystem-practitioner-registration-status-code.html'>https://standards.digital.health.nz/ns/practitioner-registration-status-code</a></td></tr>
<tr><td width='20%'>Scope of practice</td><td><p>A classification of the type or range of health services that a practitioner is authorised to provide, as determined by the Responsible Authority or other statutory authority (e.g. PHARMAC), that is, what the practitioner can or cannot do. It includes Scope of Practice as defined by the Health Practitioners Competence Assurance Act 2003, any special authorisations granted, and any conditions or limitations imposed by the Responsible Authority.</p></td><td><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code</a></td></tr>
</table>
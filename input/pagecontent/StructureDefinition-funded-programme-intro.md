
**Example of extension**

```
<extension url =http://hl7.co.nz/fhir/StructureDefinition/funded-programme>
     <extension url= "fundedProgramme">
      <valueCodeableConcept>
        <coding>
            <system value=https://standards.digital.health.nz/ns/funded-programme-code/>
            <code value="DENTAL_CHILD"/>
            <display value="Dental Care - Children up to age 13"/>
        </coding>
    </valueCodeableConcept>
    </extension>
    <extension url= "currentAvailability">
        <valueBoolean value = "true">
    </extension>
    <extension url="notes">
        <valueString value = "Dental care is only free on referral. Your child’s care will normally be managed by the Auckland Regional Dental Services (ARDs).”>
    </extension>
</extension>
```
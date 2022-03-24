
**Example of extension**

```
<extension url = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode>
     <extension url= "latitude">
      <valueDecimal value="-35.99">
    </extension>
    <extension url= "longitude">
      <valueDecimal value="174.47">
    </extension>
    <extension url="datumCode">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/nz-datum-code"/>
          <code value="NZGD2000"/>
          <display value="Nz official datum, used by MoH address service"/>
        </coding>
      </valueCodeableConcept>
    </extension>
</extension>
```

**Example instances**

[Patient with geocoded address](Patient-patient-nz-geocode.html)
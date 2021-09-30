
**Example of extension**

```
  ...
  <extension url="http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship">
    <extension url="status">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/nz-citizenship-status-code"/>
          <code value="yes"/>
          <display value="Yes"/>
        </coding>
      </valueCodeableConcept>
    </extension>
    <extension url="source">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/information-source-code"/>
          <code value="BREG"/>
          <display value="Birth Register"/>
        </coding>
      </valueCodeableConcept>
    </extension>
  </extension>
  ...

```

**Example instances**

[Patient with nz-citizenship indicated](Patient-patient-nz-citizenship.html)
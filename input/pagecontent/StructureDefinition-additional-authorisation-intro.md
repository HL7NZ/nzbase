
**Example of extension**

```

  <qualification>
    <extension url="http://hl7.org.nz/fhir/StructureDefinition/additional-authorisation">
      <extension url="code">
        <valueCodeableConcept>
          <coding>
            <system value="https://standards.digital.health.nz/ns/practitioner-additional-authorisation-code"/>
            <code value="IMMU"/>
            <display value="Immunisation"/>
          </coding>
        </valueCodeableConcept>
      </extension>
      <extension url="period">
        <valuePeriod>
          <start value="2022-01-01"/>
        </valuePeriod>
      </extension>
    </extension>
    <code>
      <coding>
        <system value="http://terminology.hl7.org/CodeSystem/v2-0360"/>
        <code value="BS"/>
      </coding>
    </code>
  </qualification>

```

**Example instances**

[Practitioner with additional authorisation](Practitioner-practitioner-additional-authorisation.html)
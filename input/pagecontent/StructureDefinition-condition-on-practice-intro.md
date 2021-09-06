
**Example of extension**

```

  <qualification>
    <extension url="http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice">
      <extension url="description">
        <valueString value="Must be supervised"/>
      </extension>
      <extension url="period">
        <valuePeriod>
          <start value="2020-01-01"/>
          <end value="2020-12-31"/>
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

[Address with building name](Practitioner-practitioner-condition-on-practice.html)

**Example of extension**

```

<extension url="http://hl7.org.nz/fhir/StructureDefinition/death-date">
    <extension url="date">
      <valueDateTime value="2021-01-01"/>
    </extension>
    <extension url="source">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/information-source-code"/>
          <code value="DREG"/>
        </coding>
      </valueCodeableConcept>
    </extension>
  </extension>

```

**Example instances**

[Practitioner with death date recorded](Practitioner-practitioner-death-date.html)
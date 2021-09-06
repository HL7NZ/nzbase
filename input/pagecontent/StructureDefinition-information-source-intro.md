
**Example of extension**

```

  <name>
    <extension url="http://hl7.org.nz/fhir/StructureDefinition/information-source">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/information-source-code"/>
          <code value="BRCT"/>
          <display value="Birth Certificate"/>
        </coding>
      </valueCodeableConcept>
    </extension>
    <text value="John Doe"/>
    <family value="Doe"/>
    <given value="John"/>
  </name>

```

**Example instances**

[Patient with information source for name](Patient-patient-information-source.html)
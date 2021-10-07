

**Example of extension**

```

  <extension url="http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity">
    <valueCodeableConcept>
      <coding>
        <system value="https://standards.digital.health.nz/ns/ethnic-group-level-4-code"/>
        <code value="21111"/>
        <display value="Maori"/>
      </coding>
    </valueCodeableConcept>
  </extension>

```

Codes to record a person's ethnicity, drawn from Level 4 of the Ethnicity code system described [here](http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17)

**Example instances**

[Patient with ethnicity](Patient-patient-nz-ethnicity.html)


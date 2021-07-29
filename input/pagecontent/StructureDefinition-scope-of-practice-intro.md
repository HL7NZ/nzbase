
**Example of extension**

```
    <extension
               url="http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice">
      <extension url="code">
        <valueCodeableConcept>
          <coding>
            <system
                    value="https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code"/>
            <code value="CHIR"/>
            <display value="Chiropractor"/>
          </coding>
        </valueCodeableConcept>
      </extension>
      <extension url="period">
        <valuePeriod>
          <start value="2020-01-01"/>
          <end value="2020-12-31"/>
        </valuePeriod>
      </extension>
    </extension>
```

_Note that this is applied to the qualification element, not the resource root. See the full example below._


**Example instances**

[Practitioner with initial date](Practitioner-practitioner-scope-of-practice.html)
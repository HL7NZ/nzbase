
**Example of extension**

```
    <extension
               url="http://hl7.org.nz/fhir/StructureDefinition/registration-status-code">
      <extension url="status">
        <valueCodeableConcept>
          <coding>
            <system
                    value="https://standards.digital.health.nz/ns/practitioner-registration-status-code"/>
            <code value="current"/>
            <display
                     value="A provider who holds or is deemed to hold a current practising certificate."/>
          </coding>
        </valueCodeableConcept>
      </extension>
      <extension url="period">
        <valuePeriod>
          <start value="2021-01-01"/>
          <end value="2021-12-31"/>
        </valuePeriod>
      </extension>
    </extension>
```

_Note that this is applied to the qualification element, not the resource root. See the full example below._


**Example instances**

[Practitioner with initial date](Practitioner-practitioner-registration-status-code.html)


**Example of extension**

```
<extension url ="http://hl7.co.nz/fhir/StructureDefinition/scope-of-practice">
     <extension url= "code">
    <valueCodeableConcept>
        <coding>
           <system value=https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code />
           <code value="chir" />
           <display value="Chiropractor" />
        </coding>
    </valueCodeableConcept>
    </extension>
    <extension url= "period">
        <valuePeriod>
        	<start value="2021-01-01"/>
        	<end value="2021-12-31"/>
        </valuePeriod>
    </extension>

</extension>
```
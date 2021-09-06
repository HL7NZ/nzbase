
**Example of extension**

```
  ...
  <extension url="http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator">
    <extension url="person">
      <valueReference>
        <reference value="#administrator"/>
      </valueReference>
    </extension>
    <extension url="organization">
      <valueReference>
        <reference value="#mmh"/>
      </valueReference>
    </extension>
  </extension>
  ...

```

**Example instances**

[PractitionerRole with creator](PractitionerRole-practitionerRole-creator.html)
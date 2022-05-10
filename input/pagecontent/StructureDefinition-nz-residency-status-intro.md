
The words “Residence class visa” is intentional.  It is the wording used in Section B3 (1) of the [Eligibility Direction](https://www.health.govt.nz/system/files/documents/pages/eligibility-direction-2011.pdf) “A person who holds a residence class visa is eligible to receive services funded under the Act”.

“Residence class visa” includes both a Resident visa and a Permanent Resident visa.

**Example of extension**

```
  ...
  <extension url="http://hl7.org.nz/fhir/StructureDefinition/nz-residency-status">
    <extension url="status">
      <valueCodeableConcept>
        <coding>
          <system value="https://standards.digital.health.nz/ns/nz-residency-status-code"/>
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

[Patient with nz-residency indicated](Patient-patient-nz-residency-status.html)
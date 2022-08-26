

  This extension has been deprecated, and the [Messaging Address](StructureDefinition-messaging-address.html) extension should be used instead. The status will be changed to 'retired' in the next version of this guide.


This extension allows an EDI address to be added to the ContactPoint.system element.

As the FHIR specification has a [required](http://hl7.org/fhir/terminologies.html#required) binding for this element, it is necessary to
provide a value from the defined set (eg 'other') then place the extension on that value.

The actual value of the edi address is the .value element.

In the example below, the extension (on telecom.system) indicates that this is an EDI address supplied
by HealthLink. The actual value of the EDI address (on telecom.value) is 001a

**Example of extension**

```

  <telecom>
    <system value="other">
      <extension url="http://hl7.org.nz/fhir/StructureDefinition/edi-address">
        <valueString value="healthlink"/>
      </extension>
    </system>
    <value value="001a"/>
  </telecom>

```

**Example instances**

[Patient with EDI Address](Practitioner-practitioner-edi-address.html)
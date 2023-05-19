
## New Zealand base FHIR Implementation Guide

This is the base Implementation Guide (IG) for New Zealand and contains the common extensions that most NZ FHIR Implementations will need, along with any terminology 
artifacts referenced by them (ie coded elements).

<!--
# Must Support

Many of the elements in profiles are marked as 'Must Support'. This means that clients using these profiles must understand what the elements mean, and have a strategy for dealing them - such as storing them in local repositories or displaying them to the user. They should not be ignored if present.

Note that 'Must Support' does not mean the same as 'Required', as they may be absent.

-->

### Macron support for Te reo Māori
By default, FHIR supports macrons (and all diacritics) as commonly used by Te Reo Māori to indicate long vowels. 

Macrons are supported as FHIR uses UTF-8 for all encoding formats (JSON, XML, and RDF), and macrons are explicitly allowed by the relevant FHIR datatypes where macrons could appear.


The following tabs are available from the navbar at the top.

### Extensions

This tab lists all the extensions defined in this guide, where an extension is an additional element that can be recorded in a resource. The extension definition describes the purpose of the extension, its name and [dataType/s](http://hl7.org/fhir/datatypes.html).

Clicking on the link in the 'id' column will display the detail page for that extension. Extensions can have a single value, or can be composed of multiple 'child' elements - an example is the [funded programme](StructureDefinition-funded-programme.html) extension. The snapshot tab in the details page (about halfway down) lists all the parts of the extension - including a link to the ValueSet if the element is coded.

### Terminology

This tab lists the terminology artifacts defined in this guide. There are 2 artifacts that will be found here:

* [ValueSets](http://hl7.org/fhir/valueset.html) are sets of codes, drawn from one or more code systems, intended for use in coded data elements in Resources, as defined by a particular conformance rule - such as an Extension or Profile. The ValueSets in this Guide are 'recommended' values, but it may be possible for implementers to use additional concepts if the rules defined by a particular Extension or Profile permit this.
* [CodeSystem](http://hl7.org/fhir/codesystem.html) resources are used to declare the existence of and describe a code system, its key properties, and optionally define a part or all of its content. Wherever possible, the use of international terminologies, such as [SNOMED CT](https://www.snomed.org/), is recommended; however, a number of New Zealand-specific code systems are included in this Guide to meet unique, local requirements.

These resources can be used by Terminology Servers (like [Terminz](https://terminz-itp.azurewebsites.net/) or [Ontoserver](https://aehrc.com/ontoserver/) ) to provide terminology [operations](http://hl7.org/fhir/operations.html) of use to implementers, such as the ValueSet [$expand](http://hl7.org/fhir/valueset-operation-expand.html) operation.

There is a lot more detail on terminology in the [FHIR specification](http://hl7.org/fhir/terminology-module.html). The section on [Terminology Services](http://hl7.org/fhir/terminology-service.html) is also useful.

### Identifiers

Identifiers are used to unambiguously identify something. Examples in New Zealand are the NHI (National Health Identifier) or HPI (Health Practitioner index). Each type of identifier has a url that uniquely identifies it - for example the value for the NHI is https://standards.digital.health.nz/ns/nhi-id. This url will be present in the 'system' value in a resource instance. Note that the url will not necessarily 'resolve' - entering it into a web browser will not result in anything. 

### Artifact Index

This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

### Support

Contains links to the main FHIR specification, as well downloads for the full IG or the artifacts defined in the guide (Extension Definitions, ValueSets and CodeSystems.)

If you would like to make any feedback on this Implementation Guide, email admin@hl7.org.nz

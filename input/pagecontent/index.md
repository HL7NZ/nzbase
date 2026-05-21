
### New Zealand base FHIR Implementation Guide

This is the base FHIR Implementation Guide (IG) for New Zealand. It provides a common set of reusable FHIR artifacts for representing New Zealand concepts, including extensions, identifiers, terminology artifacts, naming systems, and profiles. It is intended to support consistency across New Zealand FHIR implementations by defining shared artifacts that can be reused across implementation guides, APIs, and solutions.

The NZ Base IG is maintained as a living artifact and is expected to evolve based on feedback and usage experience from the implementation community. Concepts are included where there is a clear New Zealand-specific requirement, where reuse across implementations is expected, and where the artifact is appropriate for inclusion in a national base guide. Where suitable definitions already exist in the core FHIR specification, international implementation guides, or other recognised registries, reuse is preferred over defining new New Zealand-specific artifacts.

NZ Base is not intended to define the complete conformance requirements for a particular implementation or use case. It does not, by itself, specify which resources, profiles, extensions, terminology bindings, or interactions must be supported by an implementation. While NZ Base artifacts may define constraints, terminology, or other rules for the artifacts themselves, downstream implementation guides, programme specifications, API specifications, or other implementation-specific artifacts are expected to define which NZ Base artifacts are required, optional, or not applicable in context.

#### Macron support for Te reo Māori
By default, FHIR supports macrons (and all diacritics) as commonly used by Te Reo Māori to indicate long vowels. 

Macrons are supported as FHIR uses UTF-8 for all encoding formats (JSON, XML, and RDF), and macrons are explicitly allowed by the relevant FHIR datatypes where macrons could appear.

### Overview of IG Sections

The following tabs are available from the navbar at the top.

#### Extensions

This tab lists all the extensions defined in this guide, where an extension is an additional element that can be recorded in a resource. The extension definition describes the purpose of the extension, its name and [dataType/s](https://hl7.org/fhir/R4/datatypes.html).

Clicking on the link in the 'id' column will display the detail page for that extension. Extensions can have a single value, or can be composed of multiple 'child' elements - an example is the [funded programme](StructureDefinition-funded-programme.html) extension. The snapshot tab in the details page (about halfway down) lists all the parts of the extension - including a link to the ValueSet if the element is coded.

#### Terminology

This tab lists the terminology artifacts defined in this guide. There are 2 artifacts that will be found here:

* [ValueSets](https://hl7.org/fhir/R4/valueset.html) are sets of codes, drawn from one or more code systems, intended for use in coded data elements in Resources, as defined by a particular conformance rule - such as an Extension or Profile. The ValueSets in this Guide are 'recommended' values, but it may be possible for implementers to use additional concepts if the rules defined by a particular Extension or Profile permit this.
* [CodeSystem](https://hl7.org/fhir/R4/codesystem.html) resources are used to declare the existence of and describe a code system, its key properties, and optionally define a part or all of its content. Wherever possible, the use of international terminologies, such as [SNOMED CT](https://www.snomed.org/), is recommended; however, a number of New Zealand-specific code systems are included in this Guide to meet unique, local requirements.

These resources can be used by Terminology Servers (like [Terminz](https://terminz-itp.azurewebsites.net/) or [Ontoserver](https://aehrc.com/ontoserver/) ) to provide terminology [operations](https://hl7.org/fhir/R4/operations.html) of use to implementers, such as the ValueSet [$expand](https://hl7.org/fhir/R4/valueset-operation-expand.html) operation.

There is a lot more detail on terminology in the [FHIR specification](https://hl7.org/fhir/R4/terminology-module.html). The section on [Terminology Services](https://hl7.org/fhir/R4/terminology-service.html) is also useful.

#### Identifiers

Identifiers are used to unambiguously identify something. Examples in New Zealand are the NHI (National Health Identifier) or HPI (Health Practitioner index). Each type of identifier has a url that uniquely identifies it - for example the value for the NHI is https://standards.digital.health.nz/ns/nhi-id. This url will be present in the 'system' value in a resource instance. Note that the url will not necessarily 'resolve' - entering it into a web browser will not result in anything. 

#### Artifact Index

This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

#### Support

Contains links to the main FHIR specification, as well downloads for the full IG or the artifacts defined in the guide (Extension Definitions, ValueSets and CodeSystems.)

If you would like to provide any feedback on this Implementation Guide, email admin@hl7.org.nz

### Version

{% include cross-version-analysis.xhtml %}

### Dependencies

{% include dependency-table.xhtml %}

### IP Statement

{% include ip-statements.xhtml %}

### Globals

{% include globals-table.xhtml %}

In FHIR Implementation Guides, global profiles are profiles that apply by default to all resources of a given type within the scope of the guide. For example, if NzPatient is defined as the global profile for Patient, all resources within the IG that reference a Patient as a subject would reference NzPatient as a subject.

NZ Base does not define any global profiles as it is not intended to define the complete conformance requirements for implementations, but instead to provide the reusable components and definitions for NZ specific concepts. 
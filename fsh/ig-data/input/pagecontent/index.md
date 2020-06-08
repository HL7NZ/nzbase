# New Zealand base FHIR Implementation Guide

This is the base Implementation Guide (IG) for New Zealand and contains the basic profiling that most NZ FHIR Implementations will need, and which other IGs (such as the NHI, HPI and Northern region guides) expand upon.

Refer to the specific tabs for details, but in summary:

* Patient has identifier sliced to support NHI (current and dormant) as well as some common extensions and associated terminology
* There's a profile on Address that adds common extensions like geocode and domocile code
* Practitioner identifier is sliced to support HPI code
* Organization identifier is sliced to support HPI organization id
* Location identifier is sliced to support the HPI Facility Id

# Must Support

Many of the elements in profiles are marked as 'Must Support'. This means that clients using these profiles must underrstand what the elemenst mean, and have a startegy for dealing them - such as storing them in local repositories or displaying them to the user. They should not be ignored if present.

Note that 'Must Support' does not mean tthe same as 'Required', as they may be absent.

# Tabs in the guide

* Profiles - lists the profiles, with links to details
* Extensions - lists all extensions, with links to details
* Terminology - lists the ValueSets and CodeSystems defined by the guide
* Table Of Contents - has a list of all the contents in the guide
* Artifact Index - All the main artifacts (Resources) defined by the guide
* Support - Links to the main FHIR spec and downloads

# Download locally

There is a zipped copy of the IG which can be directly downloaded from the Support tab. This will contain all the FHIR artifacts in the guide, as well as the textual contents.

# National summary

It is expected that most implementations in New Zealand will be derived from this guide, examples including the [NHI]() [HPI]() and [Northern region]() guides. This is done in a number of ways:

* Profiles in derived IGs are 'descended' from these base profiles, adding extensions and further constraining elements in the resource types
* Extensions and terminology defined in this guide are re-used in others


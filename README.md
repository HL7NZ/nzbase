# nzbase

This is the base Implementation Guide (IG) for New Zealand and contains the basic profiling that most NZ FHIR Implementations will need, and which other IGs (such as the NHI, HPI and Northern region guides) expand upon.

Refer to the IG for details, but in summary:

* Patient has identifier sliced to support NHI (current and dormant) as well as some common extensions and associated terminology
* There's a profile on Address that adds common extensions like geocode and domocile code
* Practitioner identifier is sliced to support HPI code
* Organization identifier is sliced to support HPI organization id
* Location identifier is sliced to support the HPI Facility Id

# Download locally

There is a zipped copy of the IG which can be directly downloaded from the Support tab in the on-line IG.

# Build notes

(These are intended only for those building the guide locally, and assume that all the dependencies have been installed.)

* todo: copy generation scripts for profiles, extensions & terminologies 

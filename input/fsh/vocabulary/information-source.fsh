
ValueSet: InformationSource
Id: information-source
Title: "InformationSource"
Description: "The source from where the value of this item was sourced"

* ^url = $information-source-vs
* codes from system $information-source-cs


CodeSystem: InformationSource
Id: information-source
Title: "InformationSource"
Description: "All possible sources of information"

* ^url = $information-source-cs

* #BREG "Birth Register"
* #BRCT "Birth Certificate"
* #NZCT "NZ Citizenship Certificate"
* #PPRT "Passport"
* #NZCI "NZ Certificate of Identity"
* #NZRT "NZ Refugee Travel Document"
* #NZET "NZ Emergency Travel Document"
* #OTHR "Other"
* #NPRF "Proof not Sighted"
* #NZPV "NZ Permanent Resident Visa"
* #NZTV "NZ Resident Visa"
* #NZMC "NZ Marriage Certificate"
* #NZCU "NZ Civil Union Certificate"
* #NZNC "NZ Name Change Certificate or Deed Poll"
* #NZDL "NZ Driver Licence"
* #CSC "Community Services Card"
* #HL7 "HL7 applied"
* #MIGR "Migrated"
* #DREG "Death Register"
* #OSEA "Death Overseas"
* #MCCOD "Medical Certificate Cause of Death"
* #CORONER "Coroner Notification"
* #OSEAOFF "Death Overseas Official"
* #DIA "DIA data share"
* #INZ "ImmigrationNZ"


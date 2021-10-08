
ValueSet: InformationSource
Id: information-source
Title: "Information Source"
Description: "The source from where the value of this item was sourced"

* ^url = $information-source-vs
* codes from system $information-source-cs


ValueSet: DodInformationSource
Id: dod-information-source
Title: "Death date Information Source"
Description: "The source from where the date of death was sourced"

* ^url = $dod-information-source-vs

* $information-source-cs#DREG "Death Register"
* $information-source-cs#OSEAOFF "Death Overseas Official"
* $information-source-cs#NPRF "Proof no Sighted"
* $information-source-cs#OSEA "Death Overseas" 
* $information-source-cs#CORONER "Coroner Notification" 
* $information-source-cs#MCCOD "Medical Certificate Cause of Death" 



CodeSystem: InformationSource
Id: information-source
Title: "Information Source"
Description: "All possible sources of information"

* ^url = $information-source-cs

* #BREG "Birth Register" "This code is added only after verification via MOH/DIA birth register matching"
* #BRCT "Birth Certificate" "Birth Certificate"
* #NZCT "NZ Citizenship Certificate" "New Zealand Citizenship Certificate issued by DIA"
* #PPRT "Passport" "An overseas passport is acceptable"
* #NZCI "NZ Certificate of Identity" "Certificate of Identity issued by DIA"
* #NZRT "NZ Refugee Travel Document" "Refugee Travel document issued by DIA"
* #NZET "NZ Emergency Travel Document" "Emergency Travel document issued by DIA"
* #OTHR "Other" "Other official document provided that is not found in the list provided"
* #NPRF "Proof not Sighted" "Information (not proof) provided by the patient / whānau verbally communicated. No proof sighted"
* #NZPV "NZ Permanent Resident Visa" "A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand"
* #NZTV "NZ Resident Visa" "A New Zealand Resident Visa (time bound) issued by Immigration New Zealand"
* #NZMC "NZ Marriage Certificate"
* #NZCU "NZ Civil Union Certificate"
* #NZNC "NZ Name Change Certificate or Deed Poll" "NZ Name Change Certificate effective from 25 January 2009, Name Change by Statutary Declaration Documents issued for names changes made between September 1995 and 25 January 2009, Deed Poll for name changes prior to September 1995"
* #NZDL "NZ Driver Licence"
* #CSC "Community Services Card"
* #HL7 "HL7 applied" "Data has been applied via HL7 message"
* #MIGR "Migrated" "From the legacy NHI System with no known external source"
* #DREG "Death Register" "The code is added only after MOH/DIA data matching"
* #OSEA "Death Overseas" "Indicates a non-New Zealand registered death advised by a third party or discovered by a media search"
* #MCCOD "Medical Certificate Cause of Death" "Date of Death from a Medical Certificate Cause of  Death. Forms HP4720, HP4721 or BDM 50"
* #CORONER "Coroner Notification" "Date of death notified to the Ministry by a Coronial Office"
* #OSEAOFF "Death Overseas Official" "Indicates a non-New Zealand registered death advised by an official source from another country."
* #DIA "DIA data share" "The code is added only after DHB or MOH/DIA data matching"
* #INZ "ImmigrationNZ" "The code is added only by the MoH or DHB from information provided by ImmigrationNZ data sharing"


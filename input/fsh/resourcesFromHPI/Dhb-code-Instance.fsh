ValueSet: DHB
Id: dhb
Title: "District Health Board Identifer"
Description: "District Health Board Identifer. Assigned by the HPI."

* ^url = $dhb-code-vs
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system $dhb-code-cs


Instance: Dhb-code
InstanceOf: CodeSystem
Usage: #definition
* url = $dhb-code-cs
* version = "1.0"
* name = "Dhb_code"
* title = "District Health Board Code"
* status = #draft
* experimental = false
* date = "2020-04-20T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "District Health Board code table."
* purpose = "District Health Board code table."
* caseSensitive = false
* valueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/dhb-code"
* versionNeeded = true
* content = #complete
* count = 20
* property[0].code = #THREE_DIGIT_CODE
* property[=].description = "Three digit code."
* property[=].type = #code
* property[+].code = #FOUR_DIGIT_CODE
* property[=].description = "Four digit code."
* property[=].type = #code
* property[+].code = #CHAR_CODE
* property[=].description = "Char code."
* property[=].type = #code
* concept[0].code = #G00026-A
* concept[=].display = "Northland"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #011
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #1011
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #NLD
* concept[+].code = #G00013-C
* concept[=].display = "Waitematā"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #021
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #1021
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #NWA
* concept[+].code = #G00011-K
* concept[=].display = "Auckland"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #022
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #1022
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #CAK
* concept[+].code = #G00012-A
* concept[=].display = "Counties Manukau"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #023
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #1023
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #SAK
* concept[+].code = #G00027-C
* concept[=].display = "Waikato"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #031
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #2031
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #WKO
* concept[+].code = #G00028-E
* concept[=].display = "Lakes"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #042
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #2042
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #LKS
* concept[+].code = #G00031-E
* concept[=].display = "Bay of Plenty"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #047
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #2047
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #BOP
* concept[+].code = #G00029-G
* concept[=].display = "Tairāwhiti"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #051
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #2051
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #TRW
* concept[+].code = #G00030-C
* concept[=].display = "Taranaki"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #071
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #2071
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #TKI
* concept[+].code = #G00032-G
* concept[=].display = "Hawke's Bay"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #061
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3061
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #HWB
* concept[+].code = #G00033-J
* concept[=].display = "MidCentral"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #081
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3081
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #MWU
* concept[+].code = #G00035-B
* concept[=].display = "Whanganui"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #082
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3082
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #WNI
* concept[+].code = #G00036-D
* concept[=].display = "Capital & Coast"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #091
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3091
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #CAP
* concept[+].code = #G00006-F
* concept[=].display = "Hutt"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #092
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3092
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #HUT
* concept[+].code = #G00037-F
* concept[=].display = "Wairarapa"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #093
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3093
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #WRP
* concept[+].code = #G00038-H
* concept[=].display = "Nelson Marlborough"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #101
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #3101
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #NLM
* concept[+].code = #G00039-K
* concept[=].display = "West Coast"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #111
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #4111
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #WCO
* concept[+].code = #G00005-D
* concept[=].display = "Canterbury"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #121
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #4121
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #CTY
* concept[+].code = #G00025-K
* concept[=].display = "South Canterbury"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #123
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #4123
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #SCY
* concept[+].code = #G02328-E
* concept[=].display = "Southern"
* concept[=].property[0].code = #THREE_DIGIT_CODE
* concept[=].property[=].valueCode = #160
* concept[=].property[+].code = #FOUR_DIGIT_CODE
* concept[=].property[=].valueCode = #4160
* concept[=].property[+].code = #CHAR_CODE
* concept[=].property[=].valueCode = #SRN
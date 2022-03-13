ValueSet: Datum
Title: "Datum Code"
Description: "Identifies the coordinate system used to specify points on a map"
* ^url =  $datum-vs

* codes from system $datum-cs

CodeSystem: Datum
Title: "Datum Code"
Description: "Identifies the coordinate system used to specify points on a map"

* ^url = $datum-cs

* #NZGD2000 "NZ offical datum, used by MoH address service"
* #WGS84 "global datum,  used by google maps"

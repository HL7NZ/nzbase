
# IG build script. Executed at the root of the IG folder

# build the terminology summary
# ../scripts/makeTerminologySummary.js nzbase

JAVA -jar ../publisher/publisher.jar -ig .

# JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig . # -tx n/a

# sushi fsh -o .
sushi -s -o .

if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...


echo "Creating Profiles and extensions summary pages..."
../scripts/makeProfilesAndExtensions.js nzbase

echo "Making terminology summary"   # will copy into IG input folder
../scripts/makeTerminologySummary.js nzbase

echo "Making NamingSystem summary summary"   # will copy into IG input folder
../scripts/makeNamingSystemSummary.js nzbase

# uncomment to run terminology audit
# ./auditTerminology.js nzbase

fi
# upload the zip file to the server - for the ballot copy

scp ./output/full-ig.zip root@igs.clinfhir.com:/var/www/nzbaseig.zip


# after uplading, log into igs.clinfhir.com
# cd /var/www
# mv nzbase nzbaseDEP{1}
# mv site nzbase
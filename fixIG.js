#!/usr/bin/env node

/** fix the IG text
 * 
 * Copy the output folder into publish
 * then run this script
 * 
 * 
 */
let fs = require('fs');

let srchString = 'HL7® FHIR® New Zealand Base Implementation Guide - Local Development build (v3.0.0). See the <a href="http://fhir.org.nz/ig/base/history.html">Directory of published versions</a>'
                  //HL7® FHIR® New Zealand Base Implementation Guide - Local Development build (v1.0.0). See the <a href="http://hl7.org.nz/fhir/ig/base/history.html">Directory of published versions</a>

let replString = 'HL7® FHIR® New Zealand Base Implementation Guide, published by HL7 New Zealand'
let fullFolderPath = "./publish"
let outFolder = './publish/'



let arFiles = fs.readdirSync(fullFolderPath);
//console.log(arFiles)
arFiles.forEach(function(name){

    let fullFileName = fullFolderPath + "/"+ name;
    let outFileName = outFolder + name;

    if (! isDir(fullFileName)) {
        console.log(fullFileName)
        if (fullFileName.indexOf('.html') > -1) {
            //this is an html file - we can do the checks...
            let contents = fs.readFileSync(fullFileName,'utf8').toString();

            contents = contents.replace("QA Report","")
            g = contents.indexOf(srchString)
            if (g > -1) {
                contents = contents.replace(srchString,replString)
        
                //let g1 = newFile.indexOf(replString)
                //fs.writeFileSync(outFileName,newFile,{encoding:"utf8"})
        
                console.log('fixed ' )
            } 
    
    
           fs.writeFileSync(outFileName,contents,{encoding:"utf8"})
        } else {
            //anything else is just a read/write
           // fs.createReadStream(fullFileName).pipe(fs.createWriteStream(outFileName));

           // let contents = fs.readFileSync(fullFileName)    //a buffer
           // fs.writeFileSync(outFileName)
        }



        

    }
    
   


})


function isDir(path) {
    try {
        var stat = fs.lstatSync(path);
        return stat.isDirectory();
    } catch (e) {
        // lstatSync throws an error if path doesn't exist
        return false;
    }
}
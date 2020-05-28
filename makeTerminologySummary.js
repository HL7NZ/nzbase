#!/usr/bin/env node

/**
 * make the summary MD file for terminology*/

let fs = require('fs');

let rootPath = "input/vocabulary/";
let outFile = "fsh/ig-data/input/pagecontent/terminology.md";


let arFile = []
let arCS = []
let arVS = []

arVS.push("### ValueSets");
arVS.push("\r\n");
let vsText = `
Valuesets are selectors of concepts (represened as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
`
arVS.push(vsText);



arVS.push("\r\n");

arVS.push("| ValueSet | Purpose | Url |")
arVS.push("| --- | --- | --- |")

arCS.push("### CodeSystems");
arCS.push("\r\n");
let csText = `
These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR
`
arCS.push(csText);
arCS.push("\r\n");
arCS.push("| CodeSystem | Purpose | Url |")
arCS.push("| --- | --- | --- |")


fs.readdirSync(rootPath).forEach(function(file) {
    console.log(file)
    let ar = file.split('-')
    switch (ar[0]) {
        case 'ValueSet' :
            let vs = loadFile(file)
            let lne = "| " + vs.title + " | " + vs.description + " | "
            let ar1 = file.split('.')
            let htmlFile = ar1[0] + '.html'
            lne += "["+vs.url+"]("+ htmlFile  +") |"
            //lne += "\n"
            arVS.push(lne)
            break;

    case 'CodeSystem' :
            let cs = loadFile(file)
            let lneCS = "| " + cs.title + " | " + cs.description + " | "
            let ar2 = file.split('.')
            let htmlFile2 = ar2[0] + '.html'
             lneCS += "["+cs.url+"]("+ htmlFile2  +") |"
            //lne += "\n"
            arCS.push(lneCS)
            break;
    }

})

arVS.push("\r\n")

let newAR = arVS.concat(arCS)

let fle = newAR.join('\r\n');
fs.writeFileSync(outFile,fle)




function loadFile(path) {
    let fullFileName = rootPath + path;
    let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'});
    let resource = JSON.parse(contents)
    return resource;
}


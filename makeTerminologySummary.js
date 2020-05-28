#!/usr/bin/env node

/**
 * make the summary MD file for terminology*/

let fs = require('fs');

let rootPath = "input/vocabulary/";
//let outFile = "fsh/ig-data/input/pagecontent/terminology.xml";

let outFile = "fsh/ig-data/input/pagecontent/terminology.md";

//let arFile = []
let arCS = []
let arVS = []


arVS.push("### ValueSets");

let vsText = `
<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>
`
arVS.push(vsText);

//arVS.push("<br></br>");

arVS.push("<table class='table table-bordered table-condensed'>");

arVS.push("<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>")


arCS.push("### CodeSystems");
//arCS.push("\r\n");
let csText = `
These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR
`
arCS.push(csText);
//arCS.push("\r\n");
arCS.push("<table class='table table-bordered table-condensed'>");
arCS.push("<tr><th>CodeSystem</th><th>Purpose</th><th>ValueSet Url</th></tr>")


//initial scan to get hash for codesystem urls
let hashCS = {}
fs.readdirSync(rootPath).forEach(function(file) {
    //console.log(file)
    let ar = file.split('-')
    switch (ar[0]) {
        case 'CodeSystem' :

            let cs = loadFile(file)

            let arCs = file.split('.')
            let csHtmlFile = arCs[0] + '.html'

            hashCS[cs.url] = csHtmlFile
            break;
    }
})


fs.readdirSync(rootPath).forEach(function(file) {
    //console.log(file)
    let ar = file.split('-')
    switch (ar[0]) {
        case 'ValueSet' :
            let vs = loadFile(file)
            let vsLne = "<tr>"
            vsLne += "<td width='20%'>" + vs.title + "</td>";
            vsLne += "<td>" + vs.description + "</td>";
            //let lne = "| " + vs.title + " | " + vs.description + " | "
            let arVs = file.split('.')
            let htmlFile = arVs[0] + '.html'
            let vsLink = "<a href='"+ htmlFile +"'>" + vs.url + "</a>";
            vsLne += "<td>" + vsLink + "</td>";

            vsLne += "<td>" 
            vs.compose.include.forEach(function(item) {

                

                let csHtmlFile = hashCS[item.system];
                let csLink = "<a href='"+ csHtmlFile +"'>" + item.system + "</a>";

                vsLne += "<div>" + csLink + "</div>"
            })
            vsLne += "</td>" 


            vsLne += "</tr>"
            arVS.push(vsLne)
            break;

    case 'CodeSystem' :

        let cs = loadFile(file)
        let csLne = "<tr>"
        csLne += "<td width='20%'>" + cs.title + "</td>";
        csLne += "<td>" + cs.description + "</td>";
        //let lne = "| " + vs.title + " | " + vs.description + " | "
        let arCs = file.split('.')
        let csHtmlFile = arCs[0] + '.html'
        let csLink = "<a href='"+ csHtmlFile +"'>" + cs.url + "</a>";
        csLne += "<td>" + csLink + "</td>";
        csLne += "</tr>"
        arCS.push(csLne)
        break;
/*
            let cs = loadFile(file)
            let lneCS = "| " + cs.title + " | " + cs.description + " | "
            let ar2 = file.split('.')
            let htmlFile2 = ar2[0] + '.html'
             lneCS += "["+cs.url+"]("+ htmlFile2  +") |"
            //lne += "\n"
            arCS.push(lneCS)
            break;
            */
    }

})
arVS.push("</table>")
arVS.push("<br></br>")
//arVS.push("\r\n")

let newAR = arVS.concat(arCS)

//newAR.splice(0,0,'<head> <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> </head>')

//newAR.splice(0,0,'<div xmlns="http://www.w3.org/1999/xhtml">')
//newAR.splice(0,0,'<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../src-generated/schemas/fhir-single.xsd">')

//newAR.push('</div>')

let fle = newAR.join('\r\n');
fs.writeFileSync(outFile,fle)




function loadFile(path) {
    let fullFileName = rootPath + path;
    let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'});
    let resource = JSON.parse(contents)
    return resource;
}


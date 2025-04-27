/**********************************************************

MIT License
Copyright (c) 2025 Romain Letellier

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*********************************************************/

/**********************************************************
 
translate.jsx

DESCRIPTION

This script automates the process of translating Photoshop text layers
by identifiying them and replacing their content with the corresponding.
It then exports the translated fil as a PNG with the suffix "_language".

This script was partially generated with the assistance of large language models.

**********************************************************/

#target photoshop

var translationFile = File.openDialog("Please select", "csv:*.csv");
const ouputFolder = Folder.selectDialog("Select the output folder:");
const doc = app.activeDocument;

function main(translationFile) {
    if (!translationFile) {
        alert("No file selected");
        return;
    }

    var translations = readCSV(translationFile.fsName);
    if (translations.length === 1) {
        alert("No translations found in the CSV file.");
        return;
    }

    textToReplace = [];
    for (var i = 0; i < translations[0].length; i++) {
        var textLayerName = translations[0][i];
        textToReplace.push(textLayerName);
    }

    var textLayerList = []
    for (var i = 1; i < textToReplace.length; i++) {
        var textLayerName = textToReplace[i];

        textLayerList.push(findLayerByName(doc, textLayerName));
        if (textLayerList[i-1] == null) {
            alert("Layer " + textLayerName + " not found in the document.");
            return;
        }
        if (textLayerList[i-1].kind !== LayerKind.TEXT) {
            alert("Layer " + textLayerName + " is not a text layer.");
            return;
        }
    }

    for (var i = 1; i < translations.length; i++) {
        var language = translations[i][0];
        for (var j = 1; j < translations[i].length; j++) {
            var newText = translations[i][j];
            var textLayer = textLayerList[j-1];
            textLayer.textItem.contents = newText;
        }
        exportDocument(language);
    }
    for (var k=0; k < textLayerList.length; k++) {
        textLayerList[k].textItem.contents = translations[0][k+1];
    }
}

// Functions that reads the CSV file and extracts the data
function readCSV(filePath) {
    var file = new File(filePath);
    var data = [];
    if (!file.open('r')) {
        alert("Can't open the CSV file: " + filePath);
        return data;
    }

    while (!file.eof) {
        var line = file.readln();
        var fields = line.split(",");
        data.push(fields);
    }
    file.close();
    return data;
}

// Finds a layer by name in the document
function findLayerByName(doc, name) {
    for (var i = 0; i < doc.layers.length; i++) {
        var layer = doc.layers[i];
        if (layer.name === name) {
            return layer;
        } else if (layer.typename === "LayerSet") {
            var found = findLayerByName(layer, name);
            if (found) return found;
        }
    }
    return null;
}

// Export the document as PNG
function exportDocument(suffix) {
    var exportOptions = new ExportOptionsSaveForWeb();
    exportOptions.format = SaveDocumentType.PNG;
    exportOptions.PNG8 = true;
    exportOptions.transparency = true;
    exportOptions.includeProfile = false;
    exportOptions.interlaced = false;
    exportOptions.quality = 40;
    var folderPath = doc.path;

    var file = new File(ouputFolder + "/" + doc.name.replace(/\.[^\.]+$/, "") + "_" + suffix);
    app.activeDocument.exportDocument(file, ExportType.SAVEFORWEB, exportOptions);
}

main(translationFile);
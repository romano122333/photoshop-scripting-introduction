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
 
apply_mockup.jsx

DESCRIPTION

This script automates the process of applying a design to a mockup in Photoshop.
It reads a CSV file containing design names and colors, applies the color to a specific layer,
replaces the design in the mockup, and exports the final image.
It is designed to be run from the command line with arguments passed to it.

Warning: The scripts searches for the layer "Place your design here" and "Color" in the mockup,
be sure to modify their names in the script if your mockup file doesn't follow the same termonology.

This script was partially generated with the assistance of large language models.

**********************************************************/

#target photoshop

// Layer names in the mockup
const designLayerName = "Place your design here";
const colorLayerName = "Color";
const exportOptions = {
    format: SaveDocumentType.PNG, // You can use SaveDocumentType.JPEG or SaveDocumentType.COMPUSERVEGIF as well
    quality: 40,
    PNG8: true,
    interlaced: false,
    transparency: true,
    includeProfile: false
};


// Gathering arguments
var imagesFolderPath = arguments[0];
var outputPath = arguments[1];
var csvPath = arguments[2];
var psdPath = arguments[3];

// Main function
function main(imagesFolderPath, exportFolderPath, csvFilePath, psdFilePath) {
    // Opens the mockup file
    try {
        var mockupFile = new File(psdFilePath);
        app.open(mockupFile);
    } catch (e) {
        alert("Can't open the mockup file: " + e);
        return;
    }
    
    const doc = app.activeDocument;

    // Extract the info from the CSV file
    var csvData = readCSV(csvFilePath);

    // Applying the color and replacing the design
    for (var i = 1; i < csvData.length; i++) {
        var entry = csvData[i];
        var designName = entry[0];
        var hexColor = entry[1];

        applyColorToLayer(doc, colorLayerName, hexColor);
        replaceDesign(doc, imagesFolderPath, designName, designLayerName);
        var exportPath = exportFolderPath + "/" + baseName;
        exportDocument(exportPath, exportOptions);
    }

    app.activeDocument.close(SaveOptions.DONOTSAVECHANGES);
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

// Function that checks if a string exists in a list
function stringExists(str, list) {
    for (var i = 0; i < list.length; i++) {
        if (list[i] === str) {
            return true;
        }
    }
    return false;
}

// Apply color to the whole layer
// Dependencies : findLayerByName, hexToSolidColor
function applyColorToLayer(doc, layerName, hexColor) {
    var targetLayer = findLayerByName(doc, layerName);
    if (!targetLayer) {
        alert('Layer "' + layerName + '" was not found. Make sure that it corresponds to the actual layer name.');
        return;
    }

    doc.activeLayer = targetLayer;

    doc.selection.selectAll();

    var rgbColor = hexToSolidColor(hexColor);
    app.foregroundColor = rgbColor;
    doc.selection.fill(app.foregroundColor);
    doc.selection.deselect();
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

// Convert hex color to SolidColor
function hexToSolidColor(hex) {
    if (hex.charAt(0) === "#") {
        hex = hex.substring(1);
    }

    if (hex.length !== 6) {
        throw new Error("Invalid hexadecimal color provided: " + hex);
    }

    var color = new SolidColor();
    color.rgb.red = parseInt(hex.substring(0, 2), 16);
    color.rgb.green = parseInt(hex.substring(2, 4), 16);
    color.rgb.blue = parseInt(hex.substring(4, 6), 16);
    return color;
}

// Replace the design in the mockup
// Dependencies : findLayerByName, centerLayer, resizeLayer
function replaceDesign(doc, imageFolderPath, imageName, targetLayerName) {
    var targetLayer = findLayerByName(doc, targetLayerName);
    if (!targetLayer) {
        alert('Layer "' + targetLayerName + '" was not found. Make sure that it corresponds to the actual layer name.');
        return;
    }

    var imagePath = imageFolderPath + "/" + imageName;
    var imageFile = new File(imagePath);

    if (!imageFile.exists) {
        alert('Image not found : ' + imagePath);
        return;
    }

    var designDoc = app.open(imageFile);
    designDoc.selection.selectAll();
    designDoc.selection.copy();

    app.activeDocument = doc;
    doc.activeLayer = targetLayer;

    doc.paste();
    var pastedLayer = doc.activeLayer;

    app.activeDocument = designDoc;
    designDoc.close(SaveOptions.DONOTSAVECHANGES);

    app.activeDocument = doc;
    centerLayer(pastedLayer, targetLayer);
    resizeLayer(pastedLayer, targetLayer);

    targetLayer.remove();

    pastedLayer.name = targetLayerName;
}

// Translates the moving layer to the center of the reference layer
function centerLayer(movingLayer, referenceLayer) {
    var bounds = referenceLayer.bounds;
    var xCenter = (bounds[0].as('px') + bounds[2].as('px')) / 2;
    var yCenter = (bounds[1].as('px') + bounds[3].as('px')) / 2;

    var xCenterMoving = (movingLayer.bounds[0].as('px') + movingLayer.bounds[2].as('px')) / 2;
    var yCenterMoving = (movingLayer.bounds[1].as('px') + movingLayer.bounds[3].as('px')) / 2;

    movingLayer.translate(xCenter - xCenterMoving, yCenter - yCenterMoving);
}

// Resizes the moving layer to match the reference layer
function resizeLayer(movingLayer, referenceLayer) {
    var bounds = referenceLayer.bounds;
    var width = bounds[2].as('px') - bounds[0].as('px');
    var height = bounds[3].as('px') - bounds[1].as('px');

    var currentWidth = movingLayer.bounds[2].as('px') - movingLayer.bounds[0].as('px');
    var currentHeight = movingLayer.bounds[3].as('px') - movingLayer.bounds[1].as('px');

    var widthRatio = width / currentWidth;
    var heightRatio = height / currentHeight;

    movingLayer.resize(widthRatio * 100, heightRatio * 100);
}

// Export the document as PNG
function exportDocument(folderPath, baseName) {
    var exportOptions = new ExportOptionsSaveForWeb();
    exportOptions.format = SaveDocumentType.PNG;
    exportOptions.PNG8 = true;
    exportOptions.transparency = true;
    exportOptions.includeProfile = false;
    exportOptions.interlaced = false;
    exportOptions.quality = 40;

    var file = new File(folderPath + "/" + baseName);
    app.activeDocument.exportDocument(file, ExportType.SAVEFORWEB, exportOptions);
}

// Export the document with the specified options
function exportDocument(exportPath, options) {
    var exportOptionsDocument = new ExportOptionsSaveForWeb();
    
    exportOptionsDocument.format = options.format || SaveDocumentType.PNG;
    exportOptionsDocument.PNG8 = options.PNG8 !== undefined ? options.PNG8 : true;
    exportOptionsDocument.transparency = options.transparency !== undefined ? options.transparency : true;
    exportOptionsDocument.includeProfile = options.includeProfile !== undefined ? options.includeProfile : false;
    exportOptionsDocument.interlaced = options.interlaced !== undefined ? options.interlaced : false;
    exportOptionsDocument.quality = options.quality !== undefined ? options.quality : 40;
    
    if (options.blur !== undefined) exportOptionsDocument.blur = options.blur;
    if (options.optimized !== undefined) exportOptionsDocument.optimized = options.optimized;
    if (options.dither !== undefined) exportOptionsDocument.dither = options.dither;
    if (options.colors !== undefined) exportOptionsDocument.colors = options.colors;
    if (options.lossy !== undefined) exportOptionsDocument.lossy = options.lossy;

    var file = new File(exportPath);
    app.activeDocument.exportDocument(file, ExportType.SAVEFORWEB, exportOptionsDocument);
}

// Calling the main function
main(imagesFolderPath, outputPath, csvPath, psdPath);
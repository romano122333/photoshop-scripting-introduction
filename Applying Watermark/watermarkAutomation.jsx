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
 
watermarkAutomation.jsx

DESCRIPTION

This script checks if the number watermarks needed to fill the document is too high,
and if it isn't it paves the given document then export them into the output folder.
It is designed to be run from the command line with arguments passed to it.
This script was partially generated with the assistance of large language models.

**********************************************************/

#target photoshop

// To be commentated if you don't wish the number of watermark patterns to be capped.
const cappedWatermarkCount = true;

// Gathering arguments
var imagePath = arguments[0];
var watermarkPath = arguments[1];
var outputPath = arguments[2];
var angle = parseFloat(arguments[3]);
var opacity = parseFloat(arguments[4]) / 100.0;
var biggestDiagonal = parseFloat(arguments[5]);
biggestDiagonal *= Math.sqrt(2);
var watermarkWidth = parseInt(arguments[6]);
var watermarkHeight = parseInt(arguments[7]);
const exportOptions = {
    format: SaveDocumentType.PNG, // You can use SaveDocumentType.JPEG or SaveDocumentType.COMPUSERVEGIF as well
    quality: 40,
    PNG8: true,
    interlaced: false,
    transparency: true,
    includeProfile: false
};


// Splicing the imagePath argument into parts
var imagePathParts = imagePath.split(", ");

function main(imagePathParts, watermarkPath, outputPath, angle, opacity, biggestDiagonal) {

    // If the lowest integer n such as sqrt(w_d^2 + h_d^2) < n * min(watermarkDimensions) is such as n^2 > 10 000, abort.
    var n = Math.ceil(biggestDiagonal / Math.min(watermarkWidth, watermarkHeight));
    if (cappedWatermarkCount) {
        if (n * n > 10000) {
            alert("Too many watermarks: n² exceeds 10,000. Aborting.");
            exit();
        }
    }

    // Opening a new document with the biggest diagonal dimension
    var tempDoc = app.documents.add(biggestDiagonal, biggestDiagonal, TDBRESOLUTION=72, "tempDoc", NewDocumentMode.RGB, DocumentFill.TRANSPARENT);

    // Importing the watermark
    var wmDoc = placeImage(watermarkPath);
    wmDoc.selection.selectAll();
    wmDoc.selection.copy();
    wmDoc.close(SaveOptions.DONOTSAVECHANGES);

    // Paving the document with a n x n grid of watermarks with a lower opacity
    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            tempDoc.paste();
            var wmLayer = tempDoc.activeLayer;
            wmLayer.translate(i * watermarkWidth - biggestDiagonal/2, j * watermarkHeight - biggestDiagonal/2);
            wmLayer.opacity = opacity * 100;
        }
    }

    // All watermarks are pasted, so they can be merged and rotated
    tempDoc.mergeVisibleLayers();
    tempDoc.activeLayer.rotate(angle);

    // Selecting all the document and saving it
    tempDoc.selection.selectAll();
    tempDoc.selection.copy();
    const translationXY = (3/4) * (1-Math.sqrt(2)) * Math.sin(angle*Math.PI/180) * biggestDiagonal;

    // Beginning of the loop over documents
    for (var i = 0; i < imagePathParts.length; i++) {
        // Opening the main image
        var mainDoc = placeImage(imagePathParts[i]);
        var mainWidth = mainDoc.width.as("px");
        var mainHeight = mainDoc.height.as("px");

        // Going to the main document
        app.activeDocument = mainDoc;
        mainDoc.paste();
        var finalLayer = mainDoc.activeLayer;
        finalLayer.translate(translationXY, translationXY);


        // Final export with a quality of 90 and a watermarked suffix.
        app.activeDocument = mainDoc;
        var exportOptions = new ExportOptionsSaveForWeb();
        exportOptions.format = SaveDocumentType.JPEG;
        exportOptions.quality = 90;
        var exportFile = new File(outputPath + "/" + mainDoc.name.replace(/\.[^\.]+$/, "") + "_watermarked.jpg");
        mainDoc.exportDocument(exportFile, ExportType.SAVEFORWEB, exportOptions);

        // Main document closure
        mainDoc.close(SaveOptions.DONOTSAVECHANGES);
    }

    // End of the loop

    // Closing the temporary document
    app.activeDocument = tempDoc;
    tempDoc.close(SaveOptions.DONOTSAVECHANGES);

}

/****************************************************************
 * 
 * Reusable functions
 * 
*****************************************************************/

// Useful function that places an image in a new document
function placeImage(path) {
    var fileRef = new File(path);
    app.open(fileRef);
    return app.activeDocument;
}

// Useful function that duplicates a layer and makes it visible
function duplicateLayer(layer) {
    var dup = layer.duplicate();
    dup.visible = true;
    return dup;
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


main(imagePathParts, watermarkPath, outputPath, angle, opacity, biggestDiagonal);
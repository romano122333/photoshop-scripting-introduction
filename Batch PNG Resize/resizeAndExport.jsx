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
 
resizeAndExport.jsx

DESCRIPTION

This script resizes and crops an image to a target size, then exports it as a JPEG with a specified quality.
It is designed to be run from the command line with arguments passed to it.
This script was partially generated with the assistance of large language models.

**********************************************************/

#target photoshop

// Gathering the arguments passed from the command line
var imagePath = arguments[0];
var exportFolder = arguments[1];
var targetWidth = parseInt(arguments[2]);
var targetHeight = parseInt(arguments[3]);
const exportOptions = {
    format: SaveDocumentType.PNG, // You can use SaveDocumentType.JPEG or SaveDocumentType.COMPUSERVEGIF as well
    quality: 60,
    PNG8: true,
    interlaced: false,
    transparency: true,
    includeProfile: false
};

function main(imagePath, exportFolder, targetWidth, targetHeight) {
    var doc = openImage(imagePath);

    var targetRatio = targetWidth / targetHeight;
    var imgWidth = doc.width;
    var imgHeight = doc.height;
    var imgRatio = imgWidth / imgHeight;

    // Logic of resizing and cropping:
    // --> If the image ratio is smaller than the target ratio, the width is the limiting factor, so we resize the image to the target width and crop the top and bottom
    // --> If the image ratio is larger than the target ratio, the height is the limiting factor, so we resize the image to the target height and crop the left and right
    // --> If the image is the same size as the target size, we simply resize it to the target size
    if (imgRatio > targetRatio) {
        doc.resizeImage(null, UnitValue(targetHeight, "px"), null, ResampleMethod.BICUBIC);
        var excessWidth = doc.width - targetWidth;
        doc.crop([excessWidth / 2, 0, doc.width - excessWidth / 2, doc.height]);
    } else if (imgRatio < targetRatio) {
        doc.resizeImage(UnitValue(targetWidth, "px"), null, null, ResampleMethod.BICUBIC);
        var excessHeight = doc.height - targetHeight;
        doc.crop([0, excessHeight / 2, doc.width, doc.height - excessHeight / 2]);
    } else {
        doc.resizeImage(UnitValue(targetWidth, "px"), UnitValue(targetHeight, "px"), null, ResampleMethod.BICUBIC);
    }

    var exportPathFile = exportFolder + "/" + doc.name.replace(/\.[^\.]+$/, "") + "_resized.png";
    exportDocument(exportPathFile, exportOptions);
    doc.close(SaveOptions.DONOTSAVECHANGES);
}

/****************************************************************
 * 
 * Reusable functions
 * 
*****************************************************************/

// Function to open the image
function openImage(imagePath) {
    var fileRef = new File(imagePath);
    if (!fileRef.exists) {
        alert("Can't find the file located at: " + imagePath);
        exit();
    }
    return app.open(fileRef);
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

main(imagePath, exportFolder, targetWidth, targetHeight);
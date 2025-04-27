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

// Opening the image
var fileRef = new File(imagePath);
if (!fileRef.exists) {
    alert("Can't find the file located at: " + imagePath);
    exit();
}
var doc = app.open(fileRef);

// Useful for later
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
    doc.crop([0, excessHeight / 2, doc.width, doc.height - excessHeight / 2]); // Crop centré en haut et en bas
} else {
    doc.resizeImage(UnitValue(targetWidth, "px"), UnitValue(targetHeight, "px"), null, ResampleMethod.BICUBIC);
}

// Export in JPEG format with a quality of 60
var exportOptions = new ExportOptionsSaveForWeb();
exportOptions.format = SaveDocumentType.JPEG;
exportOptions.includeProfile = true;
exportOptions.interlaced = false;
exportOptions.optimized = true;
exportOptions.quality = 60;

// Save the file in the export folder with the same name as the original file, but with a "_web" suffix
var saveFile = new File(exportFolder + "/" + doc.name.replace(/\.[^\.]+$/, "") + "_web.jpg");
doc.exportDocument(saveFile, ExportType.SAVEFORWEB, exportOptions);
doc.close(SaveOptions.DONOTSAVECHANGES);

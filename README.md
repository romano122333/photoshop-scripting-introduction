# Photoshop Scripting Introduction

This repository contains scripts to automate various tasks in Photoshop. Below is the documentation for each script, including their purpose and usage instructions.

---

## Applying Mockup

### Description
This script automates the process of applying a design to a mockup in Photoshop. It reads a CSV file containing design names and colors, applies the specified color to a designated layer, replaces the design in the mockup, and exports the final image. The script is designed to be run from the command line with arguments passed to it.

### Important Notes
- The script searches for layers named **"Place your design here"** and **"Color"** in the mockup file. If your mockup uses different layer names, update the script accordingly.
- This script was partially generated with the assistance of large language models.

### How to Use
1. Ensure your Photoshop document contains:
    - A preferably masked layer named **"Color"**.
    - A layer named **"Place your design here"**.
2. Run the `main` script located in the AppleScript or VBScript folder.
3. Follow the prompts to:
    - Select the folder containing the mockup images.
    - Select the mockup PSD file.
    - Choose the CSV file with the design and color information.
4. Avoid interacting with Photoshop while the script is running.
5. The processed mockup images will be saved in the folder you selected.

---

## Batch PNG Resize

### Description
This script resizes and crops images to a target size, then exports them as JPEGs with a specified quality. It is designed to be run from the command line with arguments passed to it.

### How to Use
1. Run the `main` script located in the AppleScript or VBScript folder.
2. Follow the prompts to:
    - Select the folder containing the images to resize.
    - Select the export folder.
    - Specify the desired width and height for the exported images.
3. Avoid interacting with Photoshop while the script is running.
4. The resized images will be saved in the export folder.

---

## Watermark Application

### Description
This script applies a watermark to images by tiling the watermark across the document. It checks if the number of watermarks required is reasonable and exports the watermarked images to an output folder. The script is designed to be run from the command line with arguments passed to it.

### Prerequisites
- Ensure the Python library **Pillow** is installed. If not, install it by running:
  ```bash
  pip install Pillow
  ```

### How to Use
1. Run the `main` script located in the AppleScript or VBScript folder.
2. Follow the prompts to:
    - Select the watermark file (preferably `.png`, `.jpeg`, or `.jpg`).
    - Specify the angle for the watermark rotation.
    - Set the opacity for the watermark layer.
    - Select the input folder containing the images to watermark.
    - Select the output folder for the watermarked images.
    - Specify the Python environment where Pillow is installed (e.g., `/usr/bin/python3`).
3. A `user_preferences.txt` file will be created to save your settings. Deleting or moving this file will require reconfiguration.
4. If the script refuses to apply the watermark due to excessive patterns:
    - Increase the watermark size (recommended).
    - Decrease the size of the images (especially the largest ones).
    - Remove the limitation by commenting out line 42 in `watermarkAutomation.jsx`:
      ```javascript
      const cappedWatermarkCount = true;
      ```
5. Avoid interacting with Photoshop while the script is running.
6. The watermarked images will be saved in the output folder.

---

## Translate Automatically

### Description
This script automates the translation of Photoshop text layers. It identifies text layers, replaces their content with translations from a CSV file, and exports the translated file as a PNG with a language-specific suffix.

### How to Use
1. Prepare a CSV file with the following structure:
    - First column: Export suffixes (e.g., `_en`, `_fr`).
    - First row of other columns: Names of the text layers to modify.
    - Remaining rows: Translated text for each layer.
2. Open the Photoshop document you want to translate.
3. Go to **File > Scripts > Browse** and select the `translate.jsx` script.
4. Follow the prompts to apply the translations.
5. **Warning**: Depending on the replacement text, the font may change automatically (e.g., for languages like Chinese or Hindi).

---

## Credits and Resources

### Mockup Files
- [Energy Drink Soda Can Mockup](https://mockuptree.com/free/energy-drink-soda-can-mockup)

### Sample Images for Batch PNG Resize
- [The Road](https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__480.jpg)
- [Bird and Clouds](https://pixabay.com/photos/bird-blue-clouds-weather-pen-8788491/)
- [Mushrooms in the Forest](https://pixabay.com/fr/photos/champignons-mousse-les-bois-for%C3%AAt-8328101/)
- [Night Forest](https://pixabay.com/illustrations/night-forest-glowworm-light-3078326/)
- [Autumn Road](https://pixabay.com/fr/photos/route-for%C3%AAt-tombe-automne-saison-1072823/)


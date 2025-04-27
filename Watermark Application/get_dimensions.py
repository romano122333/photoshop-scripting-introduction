#!/usr/bin/env python3

import sys
from PIL import Image

def get_image_size(path):
    with Image.open(path) as img:
        return img.size

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Error: The path given is not valid.")
        sys.exit(1)
    
    path = sys.argv[1]
    try:
        width, height = get_image_size(path)
        print(f"{width},{height}")
    except Exception as e:
        print(f"Erreur: {str(e)}")
        sys.exit(1)

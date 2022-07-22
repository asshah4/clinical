#!/bin/bash

# Converts all the MP4 in folder to GIF
for i in *.tiff;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  convert "$i" "${name}.png"
done

# Needs to be made executable with `chmod +x tiff_to_png.sh` from terminal
# Then, runs via `sh ../../R/tiff_to_png.sh` (e.g. absolute path needed)

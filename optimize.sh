#!/bin/sh

# Optimize images and other resources

find . -type f -iname "*.png" -print0 | xargs -I {} -0 optipng -o7 -zm1-9 -strip all "{}"
find . -type f \( -iname "*.jpg" -or -iname "*.jpeg" \)  -print0 | xargs -I {} -0 jpegoptim -t --strip-all "{}"

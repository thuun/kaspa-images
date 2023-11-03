#!/bin/bash
PNG_SIZES=( "16x16" "24x24" "32x32" "48x48" "60x60" "64x64" "76x76" "120x120" "128x128" "152x152" "180x180" "256x256" )
for i in *-512x512.png; do 
    for s in "${PNG_SIZES[@]}"; do
        PREFIX=$(basename -s "-512x512.png" "$i")
        convert "$i" -format png -background none -density 2400 -resize "$s" "$PREFIX-$s.png"
    done;
done;

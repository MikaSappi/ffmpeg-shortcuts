#!/bin/bash

echo "Enter the URL you want to monitor:"
read -r url
echo -e "alright...\n"
echo -e "ctrl + c to exit.\n"

ffmpeg -i "$url" -filter_complex "[0:a]ebur128=video=1:meter=18[v]" -map "[v]" -f nut - | ffplay -i -

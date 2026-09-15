#!/bin/bash

echo "In three seconds, your default CoreAudio device will be monitored."
sleep 3
echo -e "alright...\n"
echo -e "ctrl + c to exit.\n"

ffmpeg -f avfoundation -i "none:default" \
  -filter_complex "[0:a]ebur128=video=1:meter=18[v]" -map "[v]" -f nut - | ffplay -i -

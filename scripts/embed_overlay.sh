#!/bin/bash

display_help()
{
  echo
  echo "Takes a video and adds an overlay file to fade in starting at 3 seconds in and fading out at 9 seconds in."
  echo "The resulting file is saved to <Video File>-overlay.<extension> in the current directory."
  echo
  echo "Usage: ${0} <Video File> <Overlay Image>"
  echo
  echo "e.g. ${0} myvideo.mp4 myoverlay.png"
  echo "  resulting file: myvideo-overlay.mp4"
  echo
}

if [ "$#" -ne 2 ]
then
  display_help
  exit 1
fi

VIDEO_FILE_NAME="${1%.*}"
VIDEO_FILE_EXTENSION="${1##*.}"

ffmpeg -i "${1}" -loop 1 -i "${2}" \
  -filter_complex "[1:0] format=yuva420p,fade=in:st=3:d=0.5:alpha=1,fade=out:st=9:d=0.5:alpha=1 [ovr]; [0][ovr]overlay=0:0:shortest=1'" \
  -pix_fmt yuv420p -c:a copy "${VIDEO_FILE_NAME}-overlay.${VIDEO_FILE_EXTENSION}"

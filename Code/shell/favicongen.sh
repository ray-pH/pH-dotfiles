#!/bin/bash

set -xe
# Just pass the original .png image as the only parameter to this script.
SOURCE="$1"
BASE=`basename "${SOURCE}" .png`

convert "${SOURCE}" -thumbnail 16x16 "${BASE}_16.png"
convert "${SOURCE}" -thumbnail 32x32 "${BASE}_32.png"
convert "${SOURCE}" -thumbnail 48x48 "${BASE}_48.png"
convert "${SOURCE}" -thumbnail 64x64 "${BASE}_64.png"

icotool -c -o "${BASE}.ico" "${BASE}"_{16,32,48,64}.png
#!/bin/sh

icon_intel="INTEL"
icon_nvidia="NVIDIA"

mode=$(glxinfo | grep "OpenGL vendor" | cut -d ' ' -f 4)

if [ "$mode" = "Intel" ]; then
    echo "$icon_intel"
elif [ "$mode" = "NVIDIA" ]; then
    echo "$icon_nvidia"
fi

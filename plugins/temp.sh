#!/usr/bin/env bash
TEMP=$(/usr/local/bin/smctemp -c)

sketchybar --set temp label=" ${TEMP}°C"

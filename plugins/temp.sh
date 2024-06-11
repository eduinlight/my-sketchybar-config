#!/usr/bin/env bash
TEMP=$(/usr/local/bin/smctemp -c)

sketchybar --set temp label=" $(echo $TEMP | awk '{print int($1+0.5)}')°"

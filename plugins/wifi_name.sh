#!/usr/bin/env bash

label="$(networksetup -getairportnetwork en0 | awk '{print $4}' | head -n 1)"

sketchybar --set "$NAME" label="$label"

#!/bin/bash
# arguments
# $1 => direction [right, left, center]

sketchybar --add alias "Control Center,WiFi" $1 \
  --rename "Control Center,WiFi" wifi_alias \
  --set wifi_alias icon.drawing=on \
  padding_left=0 \
  padding_right=0 \
  background.padding_right=0 \
  background.padding_left=0 \
  label.padding_left=-5 \
  label.padding_right=2 \
  script="$PLUGIN_DIR/wifi_name.sh" \
  --subscribe wifi_alias wifi_change

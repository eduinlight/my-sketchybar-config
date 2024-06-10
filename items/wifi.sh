#!/usr/bin/env bash
# arguments
# $1 => direction [right, left, center]

params=(
  icon.drawing=off
  padding_left=0
  padding_right=0
  background.padding_right=0
  background.padding_left=0
  label.padding_left=-5
  label.padding_right=2
  alias.scale=0.87
  script="$PLUGIN_DIR/wifi_name.sh"
)

sketchybar --add alias "Control Center,WiFi" $1 \
  --rename "Control Center,WiFi" wifi_alias \
  --set wifi_alias "${params[@]}" \
  --subscribe wifi_alias wifi_change

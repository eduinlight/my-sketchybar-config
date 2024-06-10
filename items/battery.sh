#!/bin/bash

# arguments
# $1 => direction [right, left, center]

battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$FONT:Regular:19.0"
  # icon.color="$GREEN"
  padding_right=0
  padding_left=2
  label.drawing=on
  update_freq=60
  updates=on
)
status_bracket=(
  background.border_width=2
  background.height=30
)
sketchybar --add item battery $1 \
  --set battery "${battery[@]}" \
  --subscribe battery power_source_change system_woke
sketchybar --add bracket status brew vpn_alias input_alias wifi_alias volume_alias battery \
  --set status "${status_bracket[@]}"

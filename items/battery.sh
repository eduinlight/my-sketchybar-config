#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$FONT:Regular:16.0"
  # icon.color="$GREEN"
  padding_right=0
  padding_left=2
  label.drawing=on
  update_freq=60
  updates=on
)
sketchybar --add item battery $1 \
  --set battery "${battery[@]}" \
  --subscribe battery power_source_change system_woke

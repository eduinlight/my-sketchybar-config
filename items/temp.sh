#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

temp=(
  script="$PLUGIN_DIR/temp.sh"
  icon="CPU"
  icon.font="$FONT:Bold:7.0"
  icon.y_offset=6
  icon.padding_right=0
  padding_right=0
  padding_left=4
  label.drawing=on
  label.font="$FONT:Bold:11.0"
  label.padding_left=-20
  label.padding_left=-20
  label.y_offset=-4
  update_freq=10
)

sketchybar --add item temp $1 \
  --set temp "${temp[@]}"

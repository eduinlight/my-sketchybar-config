#!/bin/bash

# arguments
# $1 => direction [right, left, center]

calendar=(
  icon=cal
  icon.font="$FONT:Bold:12.0"
  icon.padding_left=20
  icon.padding_right=20
  label.width=45
  label.align=right
  label.padding_right=20
  padding_left=15
  update_freq=30
  script="$PLUGIN_DIR/calendar.sh"
  background.height=30
)

sketchybar --add item calendar $1 \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke

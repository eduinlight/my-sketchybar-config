#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

calendar=(
  icon=cal
  icon.font="$FONT:Bold:12.0"
  icon.padding_left=0
  icon.padding_right=0
  icon.color=$CYAN
  label.align=right
  label.padding_right=0
  label.color=$CYAN
  padding_left=5
  script="$PLUGIN_DIR/calendar.sh"
  update_freq=30
)

sketchybar --add item calendar $1 \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke

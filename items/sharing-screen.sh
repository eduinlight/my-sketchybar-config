#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

params=(
  icon.drawing=on
  icon.color=$ORANGE
  icon.font="$FONT:Bold:14.0"
  icon=$SCREEN_SHARING
  label.drawing=on
  label.font="$FONT:Bold:12.0"
  label.color=$ORANGE
  label=Sharing
  padding_right=4
  padding_left=4
  script="$PLUGIN_DIR/sharing-screen.sh"
  update_freq=3
)

sketchybar --add item sharing_screen $1 \
  --set sharing_screen "${params[@]}"

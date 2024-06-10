#!/bin/bash
# arguments
# $1 => direction [right, left, center]

yabai=(
  icon.width=0
  label.width=0
  script="$PLUGIN_DIR/yabai.sh"
  icon.font="$FONT:Bold:16.0"
  display=active
  padding_right=10
)

sketchybar --add event layout_changed \
  --add event window_focus \
  --add event temp_float_toggle \
  --add item yabai $1 \
  --set yabai "${yabai[@]}" \
  --subscribe yabai space_change \
  layout_changed \
  window_focus \
  temp_float_toggle \
  system_woke

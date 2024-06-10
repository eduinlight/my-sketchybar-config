#!/bin/bash

# arguments
# $1 => direction [right, left, center]

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i + 1))

  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=5
    icon.padding_right=5
    icon.highlight_color="$RED"
    icon.font="$FONT:Bold:13.0"
    label.padding_right=0
    label.color="$BLUE"
    label.highlight_color="$RED"
    label.font="sketchybar-app-font:Regular:10.0"
    label.padding_left=-2
    label.padding_right=10
    label.y_offset=-2
    padding_left=2
    padding_right=2
    background.color="$BACKGROUND_1"
    background.border_color="$TRANSPARENT"
    script="$PLUGIN_DIR/space.sh"
  )

  sketchybar --add space space.$sid left \
    --set space.$sid "${space[@]}" \
    --subscribe space.$sid mouse.clicked
done

space_windows=(
  icon.drawing=off
  label.drawing=off
  display=active
  script="$PLUGIN_DIR/space_windows.sh"
)

sketchybar --add item space_windows $1 \
  --set space_windows "${space_windows[@]}" \
  --subscribe space_windows space_windows_change

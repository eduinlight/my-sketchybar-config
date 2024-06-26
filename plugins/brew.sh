#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

COUNT="$(brew outdated | wc -l | tr -d ' \n')"
sleep 5
COLOR=$RED

case "$COUNT" in
  [3-5][0-9])
    COLOR=$ORANGE
    ;;
  [1-2][0-9])
    COLOR=$YELLOW
    ;;
  [1-9])
    COLOR=$BLUE
    ;;
  0)
    COLOR=$GREEN
    COUNT=􀆅
    ;;
esac

sketchybar --set "$NAME" label="$COUNT" icon.color="$COLOR" label.color="$COLOR"

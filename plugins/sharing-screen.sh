#!/usr/bin/env bash

SCREEN_SHARING="$(sketchybar --query default_menu_items | jq -r '.[] | select(contains("sharing your screen"))')"

on=(
  icon.drawing=on
  label.drawing=on
)

off=(
  icon.drawing=off
  label.drawing=off
)

if [ "$SCREEN_SHARING" != "" ]; then
  sketchybar --set "$NAME" "${on[@]}"
else
  sketchybar --set "$NAME" "${off[@]}"
fi

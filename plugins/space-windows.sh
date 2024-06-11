#!/usr/bin/env bash

source $CONFIG_DIR/plugins/icon_map.sh

if [ "$SENDER" = "space_windows_change" ]; then
  space=$(echo $INFO | jq -r '.space')
  apps=$(echo $INFO | jq -r '.apps | keys[]')

  icon_strip=""
  if [ "${apps}" != "" ]; then
    while read -r app; do
      __icon_map "$app"
      icon_strip+=" $icon_result"
    done <<< "${apps}"
  fi

  if [ "${icon_strip}" != "" ]; then
    sketchybar --animate sin 10 --set space.$space label.drawing=on label="$icon_strip"
  else
    sketchybar --animate sin 10 --set space.$space label.drawing=off
  fi
fi

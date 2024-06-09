#!/bin/bash

if [ "$SENDER" = "space_windows_change" ]; then
  space="$(echo "$INFO" | jq -r '.space')"
  apps="$(echo "$INFO" | jq -r '.apps | keys[]')"

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app; do
      source ./path/to/icon_map.sh
      __icon_map "${app}"
      icon_strip+=" $icon_result"
    done <<< "${apps}"
    # else
    # icon_strip=" —"
  fi

  sketchybar --animate sin 10 --set space.$space label="$icon_strip"
fi

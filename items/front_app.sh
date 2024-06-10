#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

front_app=(
  label.drawing=on
  icon.background.drawing=on
  icon.background.image.scale=0.75
  icon.background.image.y_offset=-1.5
  display=active
  script="$PLUGIN_DIR/front_app.sh"
  padding_right=
)

sketchybar --add item front_app $1 \
  --set front_app "${front_app[@]}" \
  --subscribe front_app front_app_switched

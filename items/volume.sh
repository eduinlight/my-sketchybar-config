#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

data=(
  icon.drawing=off
  label.drawing=off
  alias.color="$WHITE"
  background.padding_right=0
  background.padding_left=0
  width=35
)

sketchybar --add alias "Control Center,Sound" $1 \
  --rename "Control Center,Sound" volume_alias \
  --set volume_alias "${data[@]}"

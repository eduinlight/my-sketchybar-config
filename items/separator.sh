#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

separator=(
  icon.drawing=off
  label.font="$FONT:Light:15.0"
  label.color="$WHITE"
  label="|"
  padding_right=0
  padding_left=0
  icon.padding_left=0
  icon.padding_right=0
  display=active
)

sketchybar --add item separator_$2 $1 \
  --set separator_$2 "${separator[@]}"

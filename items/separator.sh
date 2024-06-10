#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

separator=(
  icon.drawing=off
  label.font="$FONT:Light:15.0"
  label.color="$WHITE"
  label="|"
  padding_right=4
  padding_left=0
  icon.padding_left=0
  icon.padding_right=0
  display=active
)

sketchybar --add item separator $1 \
  --set separator "${separator[@]}"

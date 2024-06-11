#!/usr/bin/env bash

# requirements
# https://github.com/exelban/stats

# notes
# check the name of stats aliases with
# sketchybar --query default_menu_items

# arguments
# $1 => direction [right, left, center]

params=(
  icon.drawing=of
  label.drawing=off
  background.padding_right=0
  background.padding_left=0
  padding_right=-10
  padding_left=0
  alias.color="$WHITE"
  alias.scale=1
  update_freq=10
)

sketchybar --add alias "Stats,Battery" $1 \
  --rename "Stats,Battery" battery_alias \
  --set battery_alias "${params[@]}"

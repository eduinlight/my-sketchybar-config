#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

brew=(
  icon=􀐛
  label=Brew
  # label.font="OperatorMono Nerd Font:Bold Italic:14.0"
  icon.color="$WHITE"
  padding_right=4
  padding_left=4
  script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add event brew_update \
  --add item brew $1 \
  --set brew "${brew[@]}" \
  --subscribe brew brew_update

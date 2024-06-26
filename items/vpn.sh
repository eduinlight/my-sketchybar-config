#!/usr/bin/env bash

# arguments
# $1 => direction [right, left, center]

sketchybar --add alias "PandaFan,Item-0" $1 \
  --rename "PandaFan,Item-0" vpn_alias \
  --set vpn_alias icon.drawing=on \
  label.drawing=off \
  alias.color="$WHITE" \
  background.padding_right=0 \
  background.padding_left=0 \
  width=25 \
  click_script="$PLUGIN_DIR/vpn.sh" \
  --subscribe vpn_alias system_woke wifi_change

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
  padding_right=0
  alias.color="$WHITE"
  alias.scale=0.8
  update_freq=10
)

bar_icons=("Docker Desktop,Item-0" "TorGuardDesktopQt,Item-0" "WireGuard,Item-0")
names=("dockr_alias" "torguard_alias" "wireguard_alias")
i=0
for alias in "${bar_icons[@]}"; do
  name="${names[$i]}"

  sketchybar --add alias "${alias}" $1 \
    --rename "${alias}" "${name}" \
    --set "${name}" "${params[@]}"

  i=$((i + 1))
done

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
  alias.scale=1
  update_freq=10
)

bar_icons=("Stats,CPU_mini" "Stats,RAM_mini" "Stats,Disk_memory" "Stats,Network_speed")
names=("cpu_alias" "ram_alias" "disk_alias" "network_alias")
padding_right=(0 -17 -15 -10)
i=1
for alias in "${bar_icons[@]}"; do
  name="${names[$i]}"

  sketchybar --add alias "${alias}" $1 \
    --rename "${alias}" "${name}" \
    --set "${name}" "${params[@]}" \
    padding_right="${padding_right[$i]}"

  i=$((i + 1))
done

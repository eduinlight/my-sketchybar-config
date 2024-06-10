#!/usr/bin/env bash
# arguments
# $1 => direction [right, left, center]

sketchybar --add item apple.logo $1 \
  --set apple.logo icon=􀣺 \
  icon.font="$FONT:Black:18.0" \
  label.drawing=off \
  \
  popup.background.border_width=1 \
  popup.background.corner_radius=10 \
  popup.background.border_color=$WHITE \
  icon.font="$FONT:Bold:16.0" \
  label.font="$FONT:Semibold:13.0" \
  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
  \
  --add item apple.preferences popup.apple.logo \
  --set apple.preferences icon=$PREFERENCES \
  label="Preferences" \
  click_script="open -a 'System Preferences'; sketchybar -m --set apple.logo popup.drawing=off" \
  \
  --add item apple.activity popup.apple.logo \
  --set apple.activity icon=$ACTIVITY \
  label="Activity" \
  click_script="open -a 'Activity Monitor'; sketchybar -m --set apple.logo popup.drawing=off" \
  \
  --add item apple.lock popup.apple.logo \
  --set apple.lock icon=$LOCK \
  label="Lock Screen" \
  click_script="pmset displaysleepnow; sketchybar -m --set apple.logo popup.drawing=off"# padding_left=10 \ # padding_right=10 \

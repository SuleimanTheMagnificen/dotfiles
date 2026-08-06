#!/bin/sh

player_status="$(playerctl status 2>/dev/null)"

#if [[ "$(playerctl status --list-all | grep "cmus")" = "cmus" ]]; then
#  echo ""
if [[ "$player_status" = "Playing" || "$player_status" = "Paused" ]]; then
  echo "$(playerctl metadata title)"
else
  echo ""
fi

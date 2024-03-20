#!/bin/zsh

while true; do
  percentage=$(cat /sys/class/power_supply/BAT0/capacity)

  if [ "$percentage" -le 5 ]; then
    notify-send -u critical "Very low battery" "${percentage}% remaining"
    sleep 2000
  elif [ "$percentage" -le 20 ]; then
    notify-send -u critical "Low battery" "${percentage}% remaining"
    sleep 2000
  else
    sleep 2000
  fi
done;
exit 0

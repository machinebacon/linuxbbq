#! /bin/bash
if test -e /sys/class/power_supply/BAT0/capacity; then
  cat /sys/class/power_supply/BAT0/capacitycat /sys/class/power_supply/BAT0/capacity >&2
else
  exit 1
fi

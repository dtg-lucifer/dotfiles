#!/usr/bin/env bash

# polybar-msg cmd quit

xrandr --output HDMI-A-1-0 --rate 100 --mode 1920x1080 --right-of eDP
i3-msg restart > /dev/null
polybar monitor &

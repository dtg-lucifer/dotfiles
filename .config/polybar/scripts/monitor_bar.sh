# #!/usr/bin/env bash
#
# # polybar-msg cmd quit
#
# xrandr --output HDMI-A-1-0 --rate 100 --mode 1920x1080 --right-of eDP
# i3-msg restart > /dev/null
# polybar monitor &
# # polybar laptop &
#
# ------------------------------------------
#

#!/usr/bin/env bash
export DISPLAY=:0
xrandr --output HDMI-A-1-0 --rate 100 --mode 1920x1080 --right-of eDP 2>&1 | tee -a /tmp/monitor_script.log
i3-msg restart > /dev/null 2>&1 | tee -a /tmp/monitor_script.log
polybar monitor & disown

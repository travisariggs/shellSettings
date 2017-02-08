#!/bin/sh
# Auto rotate screen based on device orientation

# Receives input from monitor-sensor (part of iio-sensor-proxy package)
# Screen orientation and launcher location is set based upon accelerometer position
# Launcher will be on the left in a landscape orientation and on the bottom in a portrait orientation
# This script should be added to startup applications for the user

# Clear sensor.log so it doesn't get too long over time
> .sensor.log

# Launch monitor-sensor and store the output in a variable that can be parsed by the rest of the script
monitor-sensor >> .sensor.log 2>&1 &

# Parse output or monitor sensor to get the new orientation whenever the log file is updated
# Possibles are: normal, bottom-up, right-up, left-up
# Light data will be ignored
while inotifywait -e modify .sensor.log; do
# Read the last line that was added to the file and get the orientation
ORIENTATION=$(tail -n 1 .sensor.log | grep 'orientation' | grep -oE '[^ ]+$')

# Set the actions to be taken for each possible orientation
#case "$ORIENTATION" in
#normal)
#xrandr --output eDP1 --rotate normal && gsettings set com.canonical.Unity.Launcher launcher-position Left ;;
#bottom-up)
#xrandr --output eDP1 --rotate inverted && gsettings set com.canonical.Unity.Launcher launcher-position Left ;;
#right-up)
#xrandr --output eDP1 --rotate right && gsettings set com.canonical.Unity.Launcher launcher-position Bottom ;;
#left-up)
#xrandr --output eDP1 --rotate left && gsettings set com.canonical.Unity.Launcher launcher-position Bottom ;;
#esac

# Set the actions to be taken for each possible orientation
#  For each case, rotate the screen to the proper orientation and enable or disable the keyboard and trackpad
case "$ORIENTATION" in
normal)
xrandr --output eDP-1 --rotate normal && xinput set-prop 12 "Device Enabled" 1 && xinput set-prop 14 "Device Enabled" 1 ;;
bottom-up)
xrandr --output eDP-1 --rotate inverted && xinput set-prop 12 "Device Enabled" 0 && xinput set-prop 14 "Device Enabled" 0 ;;
right-up)
xrandr --output eDP-1 --rotate right && xinput set-prop 12 "Device Enabled" 0 && xinput set-prop 14 "Device Enabled" 0 ;;
left-up)
xrandr --output eDP-1 --rotate left && xinput set-prop 12 "Device Enabled" 0 && xinput set-prop 14 "Device Enabled" 0 ;;
esac

done

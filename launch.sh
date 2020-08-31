#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top &
polybar bottom &
polybar VGA-1 &    

# if type 'xrandr' > /dev/null; then
#     if "$(xrandr -q | grep ' connected' | cut -d" " -f1 | wc -l)" -eq 2; then
#        polybar top &
#        polybar bottom &
#        polybar VGA-1 &
#     fi   
# fi

# if there is one monitor:
#    load these polybars
#    if there are these two monitors:
#       load these polybars:

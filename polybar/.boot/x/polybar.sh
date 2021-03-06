#!/usr/bin/env sh

source ~/.config/shell/env

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=$MONITOR_MAIN polybar -c ~/.config/polybar/config.ini main &
MONITOR=$MONITOR_LEFT polybar -c ~/.config/polybar/config.ini left &
MONITOR=$MONITOR_RIGHT polybar -c ~/.config/polybar/config.ini right &

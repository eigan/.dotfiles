# !/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar -U "$UID"

# Wait until the processes have been shut down
while pgrep -x waybar -U "$UID" >/dev/null; do sleep 1; done

# Launch main
waybar &

#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log

PRIMARY=$(xrandr | grep ' connected' | grep 'primary' | cut -d' ' -f1)
SECONDARY=$(xrandr | grep ' connected' | grep -v 'primary' | cut -d' ' -f1)

echo Lauching primary bar on $PRIMARY
echo Lauching secondary bar on $SECONDARY

MONITOR=$PRIMARY polybar main >>/tmp/polybar.log 2>&1 &

for MONITOR in $SECONDARY
do
        MONITOR=$MONITOR polybar secondary >>/tmp/polybar.log 2>&1 &
done

echo "Bars launched..."

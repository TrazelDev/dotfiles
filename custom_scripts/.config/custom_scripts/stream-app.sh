#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: stream-app <command>"
    exit 1
fi

echo "Cleaning up old sessions..."
killall cage wayvnc 2>/dev/null
sleep 1

echo "Starting Cage with: $@"
WLR_BACKENDS=headless cage -- foot -e zsh -i -c "$*" &

sleep 2

SOCKET=$(ls -t $XDG_RUNTIME_DIR/wayland-* | grep -v lock | head -n 1 | awk -F/ '{print $NF}')

echo "Binding VNC to $SOCKET on Tailscale IP..."
WAYLAND_DISPLAY=$SOCKET wayvnc 100.112.115.9 5900 > /dev/null 2>&1 &

echo "🚀 Ready! Open Guacamole."

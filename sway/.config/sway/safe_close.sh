#!/bin/bash

# Fetch the app_id (Wayland) or class (XWayland) of the currently focused window
window_class=$(swaymsg -t get_tree | jq -r '.. | objects | select(.focused == true) | .app_id // .window_properties.class // empty')

# Check if the active window name contains "zen" (case-insensitive)
if [[ "${window_class,,}" == *"zen"* ]]; then
    # Fire a critical notification and exit without killing the window
    notify-send -u critical "Action Blocked" "Zen Browser is protected. Use mod+Shift+C to close it."
else
    # If it's not Zen, close it immediately
    swaymsg kill
fi

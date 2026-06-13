#!/bin/bash

# Fetch the active window class
active_window=$(hyprctl activewindow -j)
window_class=$(echo "$active_window" | jq -r '.class')

# Check if the active window is Zen Browser
if [[ "$window_class" == *"zen"* ]]; then
    # Fire a critical notification and exit without killing the window
    notify-send -u critical "Action Blocked" "Zen Browser is protected. Use mod+Shift+C to close it."
else
    # If it's not Zen, close it immediately
    hyprctl dispatch killactive
fi

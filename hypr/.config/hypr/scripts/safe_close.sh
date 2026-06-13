#!/bin/bash

# Fetch the active window class and title
active_window=$(hyprctl activewindow -j)
window_class=$(echo "$active_window" | jq -r '.class')
window_title=$(echo "$active_window" | jq -r '.title')

# Check if the active window is Zen Browser
# Note: Check your specific class name using `hyprctl clients`. It is usually 'zen' or 'zen-alpha'.
if [[ "$window_class" == *"zen"* ]]; then
    # Using wofi for the prompt. Replace with rofi or zenity if preferred.
    choice=$(echo -e "Cancel\nClose Window" | wofi --dmenu -p "Close Zen Browser?")
    
    if [[ "$choice" == "Close Window" ]]; then
        hyprctl dispatch killactive
    fi
else
    # If it's not Zen, close it immediately
    hyprctl dispatch killactive
fi

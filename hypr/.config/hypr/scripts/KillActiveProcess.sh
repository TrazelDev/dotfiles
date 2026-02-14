#!/bin/bash

active_pid=$(hyprctl activewindow -j | jq '.pid')

if [ -z "$active_pid" ] || [ "$active_pid" -eq 0 ]; then
    exit 1
fi

kill -9 -"$active_pid" 2>/dev/null || kill -9 "$active_pid"

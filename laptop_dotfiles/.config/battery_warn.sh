#!/bin/bash

# Battery thresholds
LOW_THRESHOLD=20      # Warn at 20%
CRITICAL_THRESHOLD=10 # Warn critically at 10%
SHUTDOWN_THRESHOLD=5  # Warn and suggest shutdown at 5%

# Path to battery information
BATTERY_CAPACITY="/sys/class/power_supply/BAT0/capacity"
BATTERY_STATUS="/sys/class/power_supply/BAT0/status"

# Check if battery paths exist
if [[ ! -f "$BATTERY_CAPACITY" || ! -f "$BATTERY_STATUS" ]]; then
	echo "Battery information files not found. Check BAT0 or adjust paths."
	exit 1
fi

CURRENT_CAPACITY=$(cat "$BATTERY_CAPACITY")
CURRENT_STATUS=$(cat "$BATTERY_STATUS")

# Only warn if discharging
if [[ "$CURRENT_STATUS" == "Discharging" ]]; then
	if ((CURRENT_CAPACITY <= SHUTDOWN_THRESHOLD)); then
		notify-send -u critical -t 0 "BATTERY CRITICAL: ${CURRENT_CAPACITY}%" "Plug in charger immediately or system will shut down soon!"
	elif ((CURRENT_CAPACITY <= CRITICAL_THRESHOLD)); then
		notify-send -u critical "BATTERY LOW: ${CURRENT_CAPACITY}%" "Consider plugging in your charger."
	elif ((CURRENT_CAPACITY <= LOW_THRESHOLD)); then
		notify-send "Battery low: ${CURRENT_CAPACITY}%" "Your battery is getting low. Charge soon."
	fi
fi

#!/bin/bash

# Get the PID of the last focused foot instance
FOOT_PID=$(swaymsg -t get_tree | jq '.. | select(.focused? == true and .app_id? == "foot") | .pid')

# Use the PID to find the current working directory
# This might require adjusting depending on how reliable it extracts the cwd for your setup
if [ ! -z "$FOOT_PID" ]; then
    CWD=$(readlink /proc/$FOOT_PID/cwd)
    echo $CWD
    # foot --working-directory="$CWD"
# else
    # Fallback in case no foot terminal was focused last; adjust to your preferred behavior
    # foot
fi

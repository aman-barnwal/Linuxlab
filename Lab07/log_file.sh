#!/bin/bash
# Script to append current date and time to a log file

# Log file location
LOGFILE="/home/$USER/time_log.txt"

# Append current date and time
echo "Current Date and Time: $(date)" >> "$LOGFILE"


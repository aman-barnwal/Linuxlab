#!/bin/bash
# memory_monitor.sh

logfile="/home/$USER/memory_log.txt"

echo "Memory monitoring started... (logging every 5 seconds)"
echo "Logs will be saved to: $logfile"
echo "-------------------------------------" >> "$logfile"

while true
do
	echo "Timestamp: $(date)" >> "$logfile"
	free -m >> "$logfile"
	echo "--------------------------------------" >. "$logfile"
	sleep 5
done

#!/bin/bash

log_file="cpu_log.txt"

echo "CPU Usage Log - Started at $(date)" >> "$log_file"
echo "-----------------------------------" >> "$log_file"

while true
do
    usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "$(date): CPU Usage = $usage%" >> "$log_file"
    sleep 10
done


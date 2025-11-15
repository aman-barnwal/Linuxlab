#!/bin/bash
clear
echo -n "Enter the Process ID (PID): "
read pid

# Check if process exists
if [ ! -d "/proc/$pid" ]; then
    echo "Process with PID $pid does not exist."
    exit 1
fi

echo "------------------------------------"
echo "Details for PID: $pid"
echo "------------------------------------"

# Process state
state=$(grep "State:" /proc/$pid/status | awk '{print $2}')
# Parent Process ID
ppid=$(grep "PPid:" /proc/$pid/status | awk '{print $2}')
# Memory usage (in kB)
mem=$(grep "VmRSS:" /proc/$pid/status | awk '{print $2, $3}')

echo "State          : $state"
echo "Parent PID     : $ppid"
echo "Memory Usage   : $mem"
echo "------------------------------------"


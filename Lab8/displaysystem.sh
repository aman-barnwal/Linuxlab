#!/bin/bash
echo "System Information: "
echo "-------------------"
echo "Date and Time: $(date)"
echo "Logged in users: $(who)"
echo "Systems Uptime: $(uptime -p)"
echo "Memory Usage: "
free -h 
echo "Disk Usage: "
df -h

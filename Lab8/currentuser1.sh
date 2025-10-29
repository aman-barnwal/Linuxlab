#!/bin/bash

echo "Processes running by user: $USER"
echo "--------------------------------"

ps -u $USER -o pid,comm

count=$(ps -u $USER | wc -l )
count=$((count - 1))

echo "--------------------------------"
echo "Total number of processes: $count"


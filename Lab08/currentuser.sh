#!/bin/bash
# process_count.sh

count=$(ps -u $USER | wc -l)

count=$((count -1))

echo "Number of processes running by user $USER: $count"

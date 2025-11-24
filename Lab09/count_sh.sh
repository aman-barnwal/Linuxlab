#!/bin/bash

count=$(ls /home/user/*.sh 2>/dev/null | wc -l)
echo "Number of .sh files in /home/user: $count"


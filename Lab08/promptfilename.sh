#!/bin/bash

read -p "Enter filename: " filename

if [ ! -f "$filename" ]; then
	echo "Error: file '$filename' does not exist."
	exit 1
fi


read -p "Enter search pattern: " pattern

count=$(grep -c "$pattern" "$filename")

echo "Number of matching lines: $count"

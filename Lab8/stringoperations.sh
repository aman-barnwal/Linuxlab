#!/bin/bash

filename=$1

if [ -f "$filename" ]; then
	count=$(grep -i "^[aeiou]" "$filename" | wc -l)
	echo "Number of lines starting with a vowel: $count"
else
	echo "Error: File '$filename' does not exist."
fi

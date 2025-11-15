#!/bin/bash
# Script to count lines starting with a vowel

# Check if filename argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Count lines starting with a vowel (A, E, I, O, U - case insensitive)
count=$(grep -i -E '^[aeiou]' "$file" | wc -l)

echo "Number of lines starting with a vowel: $count"


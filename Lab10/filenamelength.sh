#!/bin/bash

echo "Enter directory path (press enter for current directory):"
read dirpath

# Use current directory if empty
if [ -z "$dirpath" ]; then
    dirpath="."
fi

# Check if directory exists
if [ ! -d "$dirpath" ]; then
    echo "Error: Directory '$dirpath' does not exist"
    exit 1
fi

echo "Filename lengths in '$dirpath':"
echo "--------------------------------"

# Process each file in the directory
for file in "$dirpath"/*
do
    if [ -e "$file" ]; then  # Check if file exists
        filename=$(basename "$file")
        length=${#filename}
        printf "%-30s : %2d characters\n" "$filename" "$length"
    fi
done


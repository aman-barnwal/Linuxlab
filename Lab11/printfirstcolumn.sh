#!/bin/bash

echo "Enter CSV filename:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi

echo "First column values:"
echo "-------------------"

# Method 1: Using cut (simple CSV)
cut -d',' -f1 "$filename"

# Alternative Method 2: Using awk (handles quoted fields better)
# awk -F',' '{print $1}' "$filename"

# Alternative Method 3: Using IFS with while loop (most robust)
# while IFS=',' read -r col1 rest
# do
#     echo "$col1"
# done < "$filename"


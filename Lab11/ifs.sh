#!/bin/bash
echo "Enter a sentence:"
read sentence

# Save original IFS and set to space only
OLD_IFS="$IFS"
IFS=$' '

for word in $sentence; do
    echo "Word: $word"
done

# Restore original IFS
IFS="$OLD_IFS"


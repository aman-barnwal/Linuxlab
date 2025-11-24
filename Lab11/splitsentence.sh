#!/bin/bash
echo "Enter a sentence:"
read sentence
for word in $sentence; do
    echo "$word"
done


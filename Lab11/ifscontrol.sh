#!/bin/bash
echo "Enter a sentence: "
read sentence

OLD_IFS="$IFS"
IFS=$' '

for word in $sentence; do
	echo "Word: $word"
done

IFS="$OLD_IFS"


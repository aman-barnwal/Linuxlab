#!/bin/bash
# compare_files.sh

file1=$1
file2=$2

if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
	echo "Error: Both arguments must be valid files."
	exit 1
fi

if cmp -s "$file1" "$file2"; then
	echo "Files are identical"
else
	echo "Files are different"
fi

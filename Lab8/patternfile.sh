#!/bin/bash
echo "Enter filename: "
read file
echo "Enter pattern to search: "
read pattern

if [ -e "$file" ]; then
    echo "Matching lines: "
    grep "$pattern" "$file"
else 
     echo "File not found!"
fi


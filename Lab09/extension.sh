#!/bin/bash
echo "Enter directory to search: "
read dir
echo "Enter file extension (e.g. .txt):"
read ext
echo "Enter minimum size in KB:"
read size

find "$dir" -type f -name "*$ext" -size +"${size}k"

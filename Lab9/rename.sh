#!/bin/bash
echo "Enter directory path: "
read dir 
echo "Enter prefix or suffix to add:"
read add

cd "$dir" || { echo "Directory not found!"; exit 1; }

for file in *; 
do
	if [ -f "$file" ]; then
		mv "$file" "${add}_$file"
	fi
done
echo "Files renamed successfully."


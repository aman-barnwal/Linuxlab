#!/bin/bash
clear
echo -n "Enter the source file path: "
read src

echo -n "Enter the destination path: "
read dest

# Check if source file exists
if [ ! -f "$src" ]; then
    echo "Error: Source file does not exist!"
    exit 1
fi

# Copy the file
cp "$src" "$dest"

# Check if copy succeeded
if [ $? -eq 0 ]; then
    echo "File copied successfully from $src to $dest"
else
    echo "File copy failed!"
fi


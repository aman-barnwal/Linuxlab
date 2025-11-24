#!/bin/bash

echo "Enter directory:"
read dir

cd "$dir"
ls -S | head -1


#!/bin/bash

echo "Enter first string: "
read str1
echo "Enter second string: "
read str2

# String length
echo "Length of first string: ${#str1}"
echo "Length of second string: ${#str2}"

concat="$str1$str2"
echo "COncatenated string: $concat"

if [ "$str1" = "$str2" ]; then
	echo "Strings are equal"
else
	echo "Strings are not equal"
fi

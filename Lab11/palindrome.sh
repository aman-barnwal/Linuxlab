#!/bin/bash
echo "Enter string:"
read str
rev=$(echo "$str" | rev)

if [ "$str" = "$rev" ]; then
    echo "Palindrome"
else
    echo "Not palindrome"
fi


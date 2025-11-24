#!/bin/bash
echo "Enter string:"
read str

# Remove spaces and convert to lowercase
cleaned_str=$(echo "$str" | tr -d ' ' | tr '[:upper:]' '[:lower:]')
rev=$(echo "$cleaned_str" | rev)

if [ "$cleaned_str" = "$rev" ]; then
    echo "'$str' is a palindrome"
else
    echo "'$str' is not a palindrome"
fi


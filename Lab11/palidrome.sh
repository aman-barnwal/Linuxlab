#!/bin/bash

echo "Enter a sentence:"
read sentence

for word in $sentence
do
    rev_word=$(echo "$word" | rev)

    if [ "$word" = "$rev_word" ]; then
        echo "$word : Palindrome"
    else
        echo "$word : Not Palindrome"
    fi
done


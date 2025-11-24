#!/bin/bash

DICTIONARY="/usr/share/dict/words"

# Check if dictionary file exists
if [ ! -f "$DICTIONARY" ]; then
    echo "Error: Dictionary file not found at $DICTIONARY"
    echo "Try installing with: sudo apt install wamerican"  # For Ubuntu/Debian
    exit 1
fi

echo "Enter a word to check in dictionary:"
read word

# Convert to lowercase for case-insensitive search
word_lower=$(echo "$word" | tr '[:upper:]' '[:lower:]')

# Method 1: Using grep (exact match)
if grep -q "^${word_lower}$" "$DICTIONARY"; then
    echo "'$word' exists in the dictionary."
else
    echo "'$word' does not exist in the dictionary."
fi

# Alternative Method 2: Using awk
# if awk -v word="$word_lower" 'tolower($0) == word {found=1; exit} END{exit !found}' "$DICTIONARY"; then
#     echo "'$word' exists in the dictionary."
# else
#     echo "'$word' does not exist in the dictionary."
# fi


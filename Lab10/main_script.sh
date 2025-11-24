#!/bin/bash

# Source the external script
source math.sh

echo "Enter a number:"
read num

# Call the imported function
result=$(factorial $num)
echo "Factorial of $num is: $result"


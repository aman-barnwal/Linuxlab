#!/bin/bash
clear
echo -n "Enter a number: "
read num

# Check for negative input
if [ $num -lt 0 ]; then
    echo "Error: Factorial is not defined for negative numbers!"
    exit 1
fi

fact=1
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

echo "Factorial of $num is $fact"


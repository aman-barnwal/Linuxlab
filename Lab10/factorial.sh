#!/bin/bash

# Function to calculate Fibonacci series
fibonacci() {
    local n=$1
    local a=0
    local b=1
    local temp
    
    echo "Fibonacci series up to $n terms:"
    
    for (( i=0; i<n; i++ ))
    do
        echo -n "$a "
        temp=$((a + b))
        a=$b
        b=$temp
    done
    echo
}

# Main script
echo "Enter number of terms:"
read terms

# Input validation
if [[ ! $terms =~ ^[0-9]+$ ]] || [ $terms -lt 1 ]; then
    echo "Error: Please enter a positive integer"
    exit 1
fi

# Call the function
fibonacci $terms


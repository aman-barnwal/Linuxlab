#!/bin/bash

# Function to calculate factorial
factorial() {
    local n=$1
    local result=1
    
    if [ $n -eq 0 ] || [ $n -eq 1 ]; then
        echo 1
        return
    fi
    
    for (( i=2; i<=n; i++ ))
    do
        result=$((result * i))
    done
    
    echo $result
}

echo "Enter a number:"
read num
res=$(factorial $num)
echo "Factorial of $num = $res"

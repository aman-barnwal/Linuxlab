#!/bin/bash
clear
echo -n "Enter first number: "
read a
echo -n "Enter second number: "
read b

sum=$((a + b))
diff=$((a - b))
prod=$((a * b))
quot=$((a / b))

echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Quotient: $quot"


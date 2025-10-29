#!/bin/bash
echo "Enter your age: "
read age

if [ $age -ge 18 ]
then
	echo "You are eligible to vote."
else
	echo "Sorry, you are not eligible to vote."
fi

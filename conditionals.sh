#!/bin/bash

# Let's take a number from the user
echo "Enter a number: "
read number

# Let's check if the user has entered a positve, negative or zero number
if [ $number -gt 0 ]; then
	echo "Number is positive"
elif [ $number -lt 0 ]; then
	echo "Number is negative"
else
	echo "User entered zero"
fi


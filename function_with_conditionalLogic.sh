#!/bin/bash

# Defining a function to check whether a number is even or odd
check_even_odd(){
	# if a number is completely divisible by two then it is even
	if [ $(($1%2)) -eq 0 ]; then
		echo "$1 is even"
	else
		echo "$1 is odd"
	fi
}

# Calling the function
check_even_odd 2

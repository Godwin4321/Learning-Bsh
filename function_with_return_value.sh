#!/bin/bash

# Creating a function with return value
add_numbers(){
	# Adding first and second parameter
	result=$(( $1 + $2 ))
	echo $result
}

sum=$(add_numbers 5 5)
echo "The sum is $sum"


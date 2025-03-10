#!/bin/bash

# Let's create a function with arguments 

# Creating (i.e.defining) a function with two parameters
greet_with_age()
{
	echo "Hello, $1! You are $2 years old."
}

# Calling the function
greet_with_age "Godwin" 21

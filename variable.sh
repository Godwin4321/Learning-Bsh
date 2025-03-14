#!/bin/bash

print_age()
{
	# local variable
	age=21
	echo "My age is $age"
}

name="Godwin" # global variable
echo "My name is $name"
print_age

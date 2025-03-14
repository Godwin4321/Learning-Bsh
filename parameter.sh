#!/bin/bash

print_age()
{
	age=$1
	echo "My age is $age"
}

name="Godwin"

age_input=${1:-25}

echo "My name is $name"

print_age "$age_input"


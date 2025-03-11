#!/bin/bash

# Prompt the user for an email

read -p "Enter email: " email

# Regular Expression for validating email
regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

# Check if the input email matches the regex pattern
# if it matches then it is a valid email

if [[ $email =~ $regex ]]; then
	echo "Valid email!"
else
	echo "Invalid email!"
fi

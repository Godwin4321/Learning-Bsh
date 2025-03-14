#!/bin/bash

declare -A people

people["name"]="Alice"
people["age"]=30

echo ${people["name"]}
echo ${people["age"]}

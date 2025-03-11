#!/bin/bash

# A script that creates 3 directories and 2 files inside each directory using loops and conditionals

# Desktop path
desktop_path="/home/avager/Desktop"

# Now let's use a loop to create 3 directories
for i in {1..3}
do
    # Define the directory name
    dir_name="Directory_$i"
    dir_path="$desktop_path/$dir_name"

    # Check if the directory already exists
    if [ -d "$dir_path" ]; then
        echo "$dir_name already exist in the Desktop"
    else 
        # Create the directory
        echo "Creating $dir_name"
        mkdir "$dir_path"
    fi

    # Loop to create 2 files inside the directory
    for j in {1..2}
    do
        # Define file name
        file_name="file_$j.txt"
        file_path="$dir_path/$file_name" 

        # Check if the file already exists
        if [ -f "$file_path" ]; then
            echo "$file_name already exists in $dir_name"
        else
            # Create the file
            echo "Creating $file_name inside $dir_name"
            touch "$file_path"
        fi
    done



done

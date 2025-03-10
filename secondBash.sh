#!/bin/bash

# Defining everything (i.e files and folders)

# Defining a folder in my desktop
folder_name="/home/avager/Desktop/my_folder"

# Defining two files inside the folder which I just created
file1="$folder_name/file1.txt"
file2="$folder_name/file2.txt"

# Defining  an archive file in Desktop
archive_name="/home/avager/Desktop/my_folder_archive.tar.gz"


# Creating everything

# Step 1: Creating a folder in Desktop
mkdir -p "$folder_name"

# Step 2: Creating file1.txt and adding content to it
echo "Content inside first file" > "$file1"

# Step 3: Create file2.txt and copy content from file1.txt
cp "$file1" "$file2"

# Step 4: Create a compressed archive file
tar -czf "$archive_name" -C "/home/avager/Desktop" "my_folder"

echo "Created folder and also compressed it."

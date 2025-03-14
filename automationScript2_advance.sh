#!/bin/bash

# Define an array of tools to check and install
tools=("git" "bash" "python3")

# Defining the function which will install the tool
install_tool() {

    local tool=$1
    
    echo "$tool is not installed. Installing $tool..."


    # Let's check if the system is macOS
    if [[ "$(uname)" == "Darwin" ]]; then
        # install tool using homebrew for macos
        brew install $tool
    elif [[ "$(uname)" == "Linux" ]]; then
        # install tool using apt for Debian/Ubuntu
        sudo apt update
        sudo apt install -y $tool
    else
        echo "Unsupported OS. Cannot install $tool"
    fi


    # Verify if the tool was installed successfully
    if command -v $tool &> /dev/null; then
        echo "$tool has been installed successfully"
    else
        echo "Failed to install $tool"
    fi 

}


# Loop through each tool in tools array
for tool in "${tools[@]}"; do
    if command -v $tool &> /dev/null; then
        echo "$tool is already installed"
    else
        install_tool $tool   # calling the function to install the tool
    fi

done


#!/bin/bash

# A script that validates and install's the desired tools in our system using conditions.

tool="python3"
if command -v $tool &> /dev/null; then
    echo "$tool is already installed"
else
    echo "$tool is not installed. Installing tool..."

    # Let's check if the system is macOS
    if [[ "$(uname)" == "Darwin" ]]; then
        # install python3 using homebrew for macos
        brew install $tool
    elif [[ "$(uname)" == "Linux" ]]; then
        # install python3 using apt for Debian/Ubuntu
        sudo apt update
        sudo apt install -y $tool
    else
        echo "Unsupported OS. Cannot install $tool"
    fi

    # Verify if python3 was installed successfully
    if command -v $tool &> /dev/null; then
        echo "$tool has been installed successfully"
    else
        echo "Failed to install $tool"
    fi 

fi

echo "Script execution done!"


#!/bin/bash

echo "Updating package list..."
sudo apt update

echo "Upgrading packages..."
sudo apt upgrade -y

echo "Cleaning up..."
sudo apt autoremove -y


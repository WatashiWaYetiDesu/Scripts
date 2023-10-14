#!/bin/bash

# To use this script cd into it's parent directory and run:
# chmod +x update.sh  

# Gatekeeper - Checks if the user is root. If not it exits the script.
if [ "$(id -u)" -ne 0 ]
    then echo "Please run as root"
    exit 1
fi

echo ""
echo "*** Performing Update ***"
echo ""
echo "Updating list of available packages..."
echo ""
apt update
echo ""
echo "Upgrading available packages (if any wewre found)..."
echo ""
apt upgrade -y
echo ""
echo "Removing any unnecessary packages..."
echo ""
apt autoremove
echo ""
echo "Cleaning the APT cache..."
echo ""
apt autoclean
echo ""
echo "Update Complete!"
echo ""
#!/bin/bash

echo ""
echo "*** Performing Update ***"
echo ""
echo "Updating list of available packages..."
echo ""
sudo apt update
echo ""
echo "Upgrading available packages (if any wewre found)..."
echo ""
sudo apt upgrade -y
echo ""
echo "Removing any unnecessary packages..."
echo ""
sudo apt autoremove
echo ""
echo "Cleaning the APT cache..."
echo ""
sudo apt autoclean
echo ""
echo "Update Complete!"
echo ""
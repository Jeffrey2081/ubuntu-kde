#!/bin/bash

# Remove preinstalled apps
sudo apt-get remove --purge gdm snapd thunderbird rhythmbox totem gnome-mahjongg gnome-mines gnome-sudoku aisleriot gnome-mahjongg gnome-mines gnome-sudoku cheese shotwell gnome-orca simple-scan gnome-calculator gnome-characters gnome-logs gnome-system-monitor gnome-disk-utility gnome-font-viewer gnome-screenshot gnome-terminal transmission-gtk gnome-todo gnome-tweaks gnome-weather gnome-shell-extension-ubuntu-dock gnome-shell-extension-appindicator gnome-shell-extension-desktop-icons -y

# Install KDE and SDDM
sudo apt-get install kde-plasma-desktop sddm -y

#Install Brave Browser
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Set SDDM as default display manager
sudo systemctl enable sddm
sudo dpkg-reconfigure sddm

# Reboot the system after 10 seconds
echo "Rebooting the system in 10 seconds..."
sleep 10
sudo reboot

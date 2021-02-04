#!/bin/bash
apt update && apt install sudo -y
sleep 2
clear
# Ask the user for login details
read -p ' please set a Username(lowercase): ' uservar

echo
echo "$uservar ALL=(ALL:ALL) ALL"  > /etc/sudoers
echo
echo
adduser $uservar
echo "proot-distro login --user $uservar ubuntu-18.04" > $PREFIX/bin/ubuntu
chmod +x $PREFIX/bin/ubuntu
cp /data/data/com.termux/files/home/UBUNTU-MODED-OS/gui.sh   /home/$uservar/

echo "Please restart your termux and login again with typing ubuntu"
echo
echo 
echo
echo "after logged in as a $uservar by typing ubuntu...you will get a script in your home directory...just type 'bash setup-gui.sh' for execute that script"

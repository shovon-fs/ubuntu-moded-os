#!/data/data/com.termux/files/usr/bin/etc

### script modified by Shovon
echo "Please allow the storage permission for termux"
termux-setup-storage
clear
echo
apt update && apt upgrade -y

sleep 2

clear
apt install  pulseaudio  -y
apt install  proot-distro -y

sleep 2 

clear
echo "Installing Ubuntu CLI please Wait...."
echo ""
echo ""
proot-distro install ubuntu-18.04
sleep 1
clear
echo "Install Done....."
sleep 2
clear
echo "Fixing sound problem"
echo "pulseaudio --start --exit-idle-time=-1" >> ~/.bashrc
echo "pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >> ~/.bashrc
sleep 2
clear
echo "Setting alias for ubuntu"
sleep 2
clear
echo "proot-distro login ubuntu-18.04" > $PREFIX/bin/ubuntu
chmod +x $PREFIX/bin/ubuntu
clear
sleep 2
echo "Ubuntu-18.04(CLI) Installed In your Termux"
echo ""
echo "Now restart Your Termux and type 'ubuntu' for start ubuntu"
cp  ~/UBUNTU-MODED-OS/addinguser.sh $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu-18.04/root/ 
echo  "After Typing ubuntu you are in a root shell like 'root@localhost' there is a script called 'addinguser.sh' you have to run it by typing 'bash addinguser.sh' "
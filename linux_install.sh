#!/bin/sh
sudo apt update
sudo apt upgrade
sudo apt install cmtk
sudo apt install unzip
sudo apt install git
cd ~/
wget "https://downloads.imagej.net/fiji/latest/fiji-linux64.zip"
unzip fiji-linux64.zip
git clone https://github.com/sandorbx/Fiji-CMTK-registration-runner-GUI.git
sudo chmod -R a+rwx ~/Fiji-CMTK-registration-runner-GUI/cmtk_munger_wsl_linux
cp ~/Fiji-CMTK-registration-runner-GUI/Fiji_CMTK_registration_runner.ijm ~/Fiji.app/plugins/Macros
cp -r ~/Fiji-CMTK-registration-runner-GUI/cmtk ~/Fiji.app/lib/
sudo chmod -R a+rwx ~/Fiji.app/lib/cmtk
rm -r ~/Fiji-CMTK-registration-runner-GUI/
rm -r ~/fiji-linux64.zip

#!/bin/sh

# Utils
sudo apt-get update
sudo apt-get install git

cd ~
mkdir myGraphics
cd ~/myGraphics
git clone https://github.com/DF4ze/first-install-scripts.git
cd first-install-scripts/

cp {.inputrc, .xbindkeysrc} ~/

echo "# Force the coloring of prompt" >> ~/.bashrc
echo force_color_prompt=yes >> ~/.bashrc

######## Graphics

cd ~/myGraphics

## Conky
git clone https://github.com/erikdubois/Aureola
cd ~/myGraphics/Aureola
./get-aureola-from-github-to-local-drive-v1.sh
cd ~/.aureola/spark/
./install-conky.sh
cp ~/myGraphics/first-install-scripts/conky.conf ~/.config/conky/


## Sardi
cd ~/myGraphics
git clone https://github.com/erikdubois/Sardi-Extra.git
cd ~/myGraphics/Sardi-Extra
./icons-sardi-extra-v2.sh

sudo add-apt-repository ppa:rebuntu16/other-stuff 
sudo apt-get update
sudo apt-get install xfce-theme-manager


## Wallpapers
cp ~/myGraphics/first-install-scripts/wallpaper ~/Images/


#Desktop
sudo apt-get install chromium-browser
snap install spotify
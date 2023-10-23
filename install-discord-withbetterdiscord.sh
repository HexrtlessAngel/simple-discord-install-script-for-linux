#!/bin/bash
sudo echo "Hello! :D"
echo "Killing any currently running discord instance."
killall discord
killall Discord
echo "Downloading latest Discord tar.gz..."
wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"
tar  --verbose xf discord.tar.gz
rm discord.tar.gz
sudo echo "Installing Discord..."
sudo rm -rf /usr/share/discord
sudo cp --verbose -r Discord/ /usr/share/discord
echo "Discord adding shortcuts..."
sudo cp --verbose discord/discord.desktop /usr/share/applications/discord.desktop
cp --verbose Discord/discord.desktop "/home/$(whoami)/Desktop/discord.desktop"
sudo rm /usr/bin/discord
echo "Discord adding terminal commands..."
sudo ln -sf /usr/share/discord/Discord /usr/bin/discord

#Better discord installer...
wget https://github.com/BetterDiscord/Installer/releases/download/v1.3.0/BetterDiscord-Linux.AppImage
chmod +x BetterDiscord-Linux.AppImage
./BetterDiscord-Linux.AppImage
rm BetterDiscord-Linux.AppImage

echo "Discord installed!"
echo "Cleaning up some shit..."
rm -rf Discord
discord & disown

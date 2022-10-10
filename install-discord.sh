#!/bin/bash
sudo echo "Hello! :D"
echo "Killing any currently running discord instance."
killall discord
killall Discord
echo "Downloading latest Discord tar.gz..."
wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"
tar xf discord.tar.gz
rm discord.tar.gz
sudo echo "Installing Discord..."
sudo rm -rf /usr/share/discord
sudo cp -r Discord/ /usr/share/discord
echo "Discord adding shortcuts..."
sudo cp discord/discord.desktop /usr/share/applications/discordnative.desktop
cp Discord/discord.desktop "/home/$(whoami)/Desktop/discord.desktop"
sudo rm /usr/bin/discord
echo "Discord adding terminal commands..."
sudo ln -sf /usr/share/discord/Discord /usr/bin/discord
echo "Discord installed!"
echo "Cleaning up some shit..."
rm -rf Discord
discord & disown

#!/bin/bash
sudo echo "D:"
echo "Killing any currently running discord instance."
killall discord
killall Discord
echo "Uninstalling discord"
sudo rm -rf /usr/share/discord
sudo rm /usr/share/applications/discordnative.desktop
rm "/home/$(whoami)/Desktop/discord.desktop"
sudo rm /usr/bin/discord
echo "Discord uninstalled successfully, sorry to see you go."

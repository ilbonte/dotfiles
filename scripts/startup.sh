#!/bin/sh
set -e

plist_file="/Library/LaunchAgents/com.dotfiles.plist"
sudo rm -rf $plist_file
sudo cp startup/com.dotfiles.plist $plist_file
sudo launchctl load -w $plist_file
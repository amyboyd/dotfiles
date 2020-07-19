#!/usr/bin/env zsh

sudo defaults write com.apple.PowerChime ChimeOnAllHardware -bool false; sudo killall PowerChime
sudo defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; sudo killall PowerChime

defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
sudo defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
sudo killall PowerChime

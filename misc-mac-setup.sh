#!/usr/bin/env zsh

# Some misc one-time stuff to do for new Macs.

# Manually install:
# brew - https://brew.sh/

# Then brew install:
brew install mas youtube-dl watchman imagemagick jenv docker docker-compose coreutils apktool awscli ffmpeg nvm wget

# The "Photo Booth" app annoyingly hides the actual JPG files in a weird place.
# This makes it easier to get them.
ln -s ~/Pictures/Photo\ Booth\ Library/Pictures ~/Pictures/Photo\ Booth\ Proper\ Files

./turn-off-powerchime.sh

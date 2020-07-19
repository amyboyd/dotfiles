#!/usr/bin/env zsh

# My "update everything" script.

autoload colors
colors
print_msg() {
    echo "$fg[yellow]""$1""$fg[default]"
}

softwareupdate --list --install --all --verbose
print_msg 'Finished softwareupdate'

mas upgrade
print_msg 'Finished App Store upgrades'

xcode-select --install
print_msg 'Finished xcode-select'

brew update
brew upgrade
brew cleanup
print_msg 'Finished brew'

dirs=("/Users/amy/.npm/_logs" "/Users/amy/.npm/_cacache" "/Users/amy/Library/Caches/Yarn" "/Users/amy/.gradle/daemon" "/Users/amy/.gradle/caches" "/Users/amy/.m2/repository")
mkdir -p $dirs
du -d0 -h $dirs
rm -fr $dirs
mkdir -p $dirs
print_msg 'Deleted caches'

rm -rf ~/.Trash/*
print_msg 'Deleted trash'

print_msg 'Printing versions...'
mongo --version
node -v
python --version
php --version

print_msg 'Restarting Nginx'
sudo nginx -t
brew services restart nginx

print_msg 'Manual instructions:'
print_msg 'Open Xcode and see if it prompts to install additional tools'
print_msg 'Do a Time Machine backup'
print_msg 'Check disk space remaining'

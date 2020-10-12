#!/bin/sh

set -e

# symlink this preferences
rm -rf ~/Library/Preferences/com.googlecode.iterm2.plist
cp ~/.dotfiles/iTerm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

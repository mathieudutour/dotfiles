#!/bin/sh

set -e

# symlink this folder to obs's preferences
rm -rf ~/Library/Application\ Support/obs-studio
ln -s ~/.dotfiles/stream ~/Library/Application\ Support/obs-studio

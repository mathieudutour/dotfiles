#!/bin/sh

# Installs the Visual Studio Code extensions listed in your extensions.txt file
# located at ~/.dotfiles/vscode/extensions.txt
#
# You can generate a new list based on currently installed
# packages via `code --list-extensions`

set -e

for extension in $(cat ./extensions.txt); do code --install-extension $extension; done

# symlink this folder to Code's preferences
rm -rf ~/Library/Application\ Support/Code/User
ln -s ~/.dotfiles/vscode ~/Library/Application\ Support/Code/User

#!/bin/sh

# Installs the Visual Studio Code extensions listed in your extensions.txt file
# located at ~/.dotfiles/vscode/extensions.txt
#
# You can generate a new list based on currently installed
# packages via `code --list-extensions`

set -e

ROOT="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# symlink this folder to Code's preferences
rm -rf ~/Library/Application\ Support/Code/User
ln -s "$ROOT" ~/Library/Application\ Support/Code/User

for extension in $(cat "$ROOT/extensions.txt"); do code --install-extension $extension; done

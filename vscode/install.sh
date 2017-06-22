#!/bin/sh
#
# Usage: vscode-extensions-install
#
# Installs the Visual Studio Code extensions listed in your extensions.txt file
# located at ~/.dotfiles/vscode/extensions.txt
#
# You can generate a new list based on currently installed
# packages via `code --list-extensions`

set -e

for extension in $(cat ./extensions.txt); do code --install-extension $extension; done

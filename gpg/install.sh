#!/bin/sh

mkdir -m 700 -p $HOME/.gnupg

echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > $HOME/.gnupg/gpg-agent.conf
echo 'use-agent' > $HOME/.gnupg/gpg.conf

echo "\n\n> Follow step 7 to 11 and 17 on https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e\n\n"

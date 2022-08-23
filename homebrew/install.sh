#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> /Users/mathieudutour/.zprofile
  eval "$($(brew --prefix)/bin/brew shellenv)"

fi

exit 0

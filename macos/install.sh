if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Install xcode if necesserary
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
  test -d "${xpath}" && test -x "${xpath}" ; then
  echo "› Skipping Xcode installation"
else
  echo "› xcode-select --install"
  xcode-select --install
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Set macOS defaults
$ZSH/macos/set-defaults.sh

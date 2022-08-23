#!/bin/sh

set -e

if test ! $(which rustup)
then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ~/.cargo/bin/rustup component add rustfmt
  ~/.cargo/bin/rustup component add clippy
fi

exit 0

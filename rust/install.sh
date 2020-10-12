#!/bin/sh

set -e

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
~/.cargo/bin/rustup component add rustfmt
~/.cargo/bin/rustup component add clippy

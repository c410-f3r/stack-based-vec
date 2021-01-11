#!/usr/bin/env bash

set -euxo pipefail

cargo install --git https://github.com/c410-f3r/rust-tools --force

export RUST_BACKTRACE=1
export RUSTFLAGS="$(rust-tools --template you-rust rust-flags)"

rust-tools rustfmt
rust-tools clippy
rust-tools test-with-features . default 
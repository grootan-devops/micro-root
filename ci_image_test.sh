#!/usr/bin/env bash

set -euo pipefail

fail() {
  printf 'image test failed: %s\n' "$1" >&2
  exit 1
}

[[ "$(id -u)" == "10001" ]] || fail "expected UID 10001, got $(id -u)"
[[ "$(id -g)" == "10001" ]] || fail "expected GID 10001, got $(id -g)"
bash --version >/dev/null
dumb-init --version

#!/usr/bin/env sh
set -euo pipefail

doas pkg_add -v \
  minidlna \
  openmdns \
  transmission \
  wireguard-tools


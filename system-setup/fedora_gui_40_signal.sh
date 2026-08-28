#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://negativo17.org/repos/fedora-multimedia.repo"

if [ "$(uname -m)" != "aarch64" ]; then
  echo "This script is intended for Fedora aarch64." >&2
  exit 1
fi

sudo dnf config-manager addrepo --overwrite --from-repofile="${REPO_URL}"
sudo dnf config-manager setopt fedora-multimedia.includepkgs=Signal-Desktop
sudo dnf install -y Signal-Desktop

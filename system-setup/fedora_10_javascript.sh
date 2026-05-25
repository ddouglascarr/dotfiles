#!/usr/bin/env bash
set -euo pipefail

NPM_PREFIX="${HOME}/.local/npm"

echo "Installing Node.js 24 and npm..."
sudo dnf install -y nodejs24 npm

echo "Creating local directories..."
mkdir -p "${HOME}/.local/bin"
mkdir -p "${NPM_PREFIX}"

echo "Configuring npm user-global install prefix..."
npm config set prefix "${NPM_PREFIX}"

echo
echo "Done."
echo "npm global prefix: $(npm config get prefix)"

#!/bin/bash
set -euo pipefail


echo "--- installing nvm"
set +e # clone should fail if its already there
git clone https://github.com/creationix/nvm.git ~/.nvm
set -e

cd ~/.nvm
git checkout v0.39.1
. nvm.sh

echo "--- installing node versions"
. ~/src/dotfiles/bin/activate-nvm
nvm install lts/gallium

echo "--- installing yarn"
brew install yarn

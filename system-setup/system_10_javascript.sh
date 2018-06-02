#!/bin/bash
set -euo pipefail


echo "--- Adding yarn key"
curl -L https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add

echo "--- Adding yarn repo"
sudo add-apt-repository "deb https://dl.yarnpkg.com/debian/ stable main"

echo "--- Installing yarn"
sudo apt install yarn

echo "--- installing nvm"
set +e # clone should fail if its already there
git clone https://github.com/creationix/nvm.git ~/.nvm
set -e

cd ~/.nvm
git checkout v0.33.11
. nvm.sh

echo "--- installing node versions"
. ~/src/dotfiles/bin/activate-nvm
nvm install lts/carbon
nvm install lts/boron

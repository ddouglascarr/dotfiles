#!/bin/bash
set -euo pipefail


echo "--- Adding yarn key"
curl -L https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add

echo "--- Adding yarn repo"
sudo add-apt-repository "deb https://dl.yarnpkg.com/debian/ stable main"

echo "--- Installing yarn"
sudo apt install yarn

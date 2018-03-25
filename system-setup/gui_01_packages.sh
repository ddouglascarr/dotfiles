#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  hedgewars \
  meld \
  vlc \
  youtube-dl \
"


# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
sudo apt-get update
sudo apt-get install -y ${PACKAGES}



#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  hedgewars \
  meld \
  vlc \
  youtube-dl \
"

export REMOVE_DEFAULT_PACKAGES="\
  gnome-software \
  gnome-maps \
  gnome-calendar \
  gnome-shell-extensions \
  gnome-software \
  gnome-tweak-tool \
  thunderbird \
  totem \
"

# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
sudo apt-get update
sudo apt-get install -y ${PACKAGES}

echo "--- Uninstalling default packages"
echo ${REMOVE_DEFAULT_PACKAGES}
sudo apt-get remove -y ${REMOVE_DEFAULT_PACKAGES}

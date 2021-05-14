#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  alacarte \
  flatpak \
  gimp \
  gnome-shell-extensions \
  gnome-shell-extension-autohidetopbar \
  gnome-tweak-tool \
  hedgewars \
  meld \
  vlc \
  youtube-dl \
"

export REMOVE_DEFAULT_PACKAGES="\
  gnome-software \
  gnome-maps \
  gnome-calendar \
  gnome-software \
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

echo "--- Installing flatpaks"
flatpak install -y \
  zotero \
  spotify \
  signal \
  transmission

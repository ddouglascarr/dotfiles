#!/bin/bash 
set -euo pipefail

echo "--- Installing flatpaks"
flatpak install -y \
  zotero \
  spotify \
  signal \
  transmission \
  skype \
  slack

#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  calibre \
  chromium \
  vlc \
"

sudo dnf install ${PACKAGES}

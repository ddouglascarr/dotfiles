#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  chromium \
  vlc \
"

sudo dnf install ${PACKAGES}

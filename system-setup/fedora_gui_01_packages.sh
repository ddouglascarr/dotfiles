#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  chromium \
"

sudo dnf install ${PACKAGES}

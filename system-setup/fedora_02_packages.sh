#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  golang \
  nvim \
  the_silver_searcher \
"

echo "--- Installing packages"
echo ${PACKAGES}
sudo dnf install -y ${PACKAGES}

#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  bibtool \
  bmake \
  cmake \
  curl \
  ffmpeg \
  git \
  golang \
  jq \
  nodejs \
  nvim \
  openvpn \
  pnpm \
  python-uv \
  postgresql-server \
  tmux \
  the_silver_searcher \
  unrar \
  weechat \
"

echo "--- Installing packages"
echo ${PACKAGES}
sudo dnf install -y ${PACKAGES}

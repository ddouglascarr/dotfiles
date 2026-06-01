#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  bibtool \
  bmake \
  cmake \
  curl \
  ffmpeg \
  git \
  jq \
  nodejs \
  nvim \
  openvpn \
  pnpm \
  podman \
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

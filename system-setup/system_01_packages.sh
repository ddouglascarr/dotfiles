#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  apt-transport-https \
  apt-file \
  build-essential \
  ca-certificates \
  curl \
  debian-archive-keyring \
  apt-transport-https \
  ffmpeg \
  git \
  git-flow \
  htop \
  jq \
  libr3-0 \
  libr3-dev \
  maven \
  postgresql \
  powertop \
  pwgen \
  redis-server \
  tmux \
  uuid-runtime \
  vim \
  silversearcher-ag \
  software-properties-common \
  unrar \
  lynx \
  weechat \
  python-dev \
  python3-dev \
"


# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
sudo apt-get update
sudo apt-get install -y ${PACKAGES}



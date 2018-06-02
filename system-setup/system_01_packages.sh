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
  gparted \
  htop \
  jq \
  libr3-0 \
  libr3-dev \
  lynx \
  maven \
  mercurial \
  ncdu \
  nginx \
  nmap \
  postgresql \
  powertop \
  pwgen \
  python-dev \
  python-pip \
  python3-dev \
  redis-server \
  tmux \
  uuid-runtime \
  vim \
  virtualbox \
  silversearcher-ag \
  software-properties-common \
  unrar \
  lynx \
  weechat \
"


# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
sudo apt-get update
sudo apt-get install -y ${PACKAGES}



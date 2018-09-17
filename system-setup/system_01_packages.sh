#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  apt-transport-https \
  apt-file \
  build-essential \
  ca-certificates \
  cmake \
  curl \
  debian-archive-keyring \
  apt-transport-https \
  ffmpeg \
  git \
  git-flow \
  gyp \
  gparted \
  htop \
  iotop \
  jq \
  libr3-0 \
  libr3-dev \
  lynx \
  maven \
  mercurial \
  ncdu \
  nginx \
  nmap \
  openvpn \
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



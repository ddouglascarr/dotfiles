#!/bin/bash
set -euo pipefail

PYTHON_VERSION="3.8.7"

sudo apt-get install -y\
  python3-pip \
  checkinstall \
  libreadline-dev libncursesw5-dev libssl-dev \
  libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

pip3 install virtualenvwrapper

mkdir -p ~/tmp
cd ~/tmp

wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
tar xzf Python-3.8.7.tgz
cd Python-${PYTHON_VERSION}
./configure --enable-optimizations
make
sudo make altinstall


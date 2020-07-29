#!/bin/bash
set -euo pipefail

# install cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

# install emacs packages
cd /home/daniel/.emacs.d
cask install


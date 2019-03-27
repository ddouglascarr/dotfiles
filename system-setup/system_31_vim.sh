#!/bin/bash
set -euo pipefail
# Installing YouCompleteMe is a bit of a mare
# The installed plugin is gitignored, as it is always registering changes.

# typscript needs to be globaled to enable completion for ts files
. /home/daniel/src/dotfiles/bin/activate-nvm
nvm use lts/carbon
npm install -g typescript

PLUGIN_DIR=/home/daniel/src/dotfiles/vim/bundle/YouCompleteMe
if [ -d "@PLUGIN_DIR" ] ; then
  git clone https://github.com/Valloric/YouCompleteMe ${PLUGIN_DIR}
fi

cd ${PLUGIN_DIR}
git submodule update --init --recursive
./install.py


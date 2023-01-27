#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  bash \
  bib-tool \
  ffmpeg \
  htop \
  jq \
  mercurial \
  postgresql@13 \
  tmux \
  the_silver_searcher \
  rar \
  virtualbox \
  weechat \
  wget \
"


# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
brew install ${PACKAGES}



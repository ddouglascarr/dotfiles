#!/bin/bash 
set -euo pipefail

export PACKAGES="\
  bash \
  bib-tool \
  deno \
  ffmpeg \
  git \
  git-delta \
  htop \
  jq \
  lua-language-server \
  mercurial \
  postgresql@13 \
  tmux \
  the_silver_searcher \
  rar \
  weechat \
  wget \
"


# Install all packages

echo "--- Installing packages"
echo ${PACKAGES}
brew install ${PACKAGES}



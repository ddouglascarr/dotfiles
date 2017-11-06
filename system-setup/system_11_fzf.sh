#!/bin/bash
set -euo pipefail

echo "--- Install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

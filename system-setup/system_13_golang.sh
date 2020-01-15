#!/bin/bash
set -euo pipefail

export GO_VERSION="1.13"
export GO_ARCH="amd64"
export GO_OS="linux"
export GO_INSTALL_DIR="/usr/local"

sudo rm -rf ${GO_INSTALL_DIR}/go
wget -qO- "https://dl.google.com/go/go${GO_VERSION}.${GO_OS}-${GO_ARCH}.tar.gz" | sudo tar xvz -C ${GO_INSTALL_DIR}




#!/bin/bash
set -euo pipefail

VERSION="3.5.1"
PLATFORM="linux-x86_64"
DL_FILE="protoc-${VERSION}-${PLATFORM}.zip"
DL_URL="https://github.com/google/protobuf/releases/download/v3.5.1/${DL_FILE}"
INSTALL_DIR="/usr/local"

cd /tmp
wget ${DL_URL}

cd ${INSTALL_DIR}
sudo unzip /tmp/${DL_FILE}
sudo chmod 755 ${INSTALL_DIR}/bin/protoc



#!/bin/bash
set -euo pipefail

VERSION="3.17.1"
PLATFORM="linux-x86_64"
DL_FILE="protoc-${VERSION}-${PLATFORM}.zip"
DL_URL="https://github.com/google/protobuf/releases/download/v${VERSION}/${DL_FILE}"
INSTALL_DIR="/usr/local"

# Install libproto and protoc

cd /tmp
wget ${DL_URL}

cd ${INSTALL_DIR}
sudo unzip /tmp/${DL_FILE}
sudo chmod 755 ${INSTALL_DIR}/bin/protoc


# Install golang proto support
go get -u google.golang.org/protobuf

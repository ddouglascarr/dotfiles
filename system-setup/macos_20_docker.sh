#!/bin/bash
set -euo pipefail

# softwareupdate --install-rosetta

cd /tmp
# wget https://desktop.docker.com/mac/main/arm64/Docker.dmg
sudo hdiutil attach Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license
sudo hdiutil detach /Volumes/Docker



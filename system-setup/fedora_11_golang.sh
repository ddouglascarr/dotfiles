#!/usr/bin/env bash
set -euo pipefail

echo "--- installing golang"
sudo dnf install -y golang gopls

echo "--- golang version"
go version

echo "--- gopls version"
gopls version


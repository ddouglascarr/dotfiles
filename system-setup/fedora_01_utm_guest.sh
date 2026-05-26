#!/usr/bin/env bash
set -euo pipefail

PACKAGES=(
  spice-vdagent
)

echo "Installing UTM guest packages..."
sudo dnf install -y "${PACKAGES[@]}"

echo "Starting SPICE clipboard agent..."
if systemctl --user list-unit-files spice-vdagent.service >/dev/null 2>&1; then
  systemctl --user start spice-vdagent.service
fi

if systemctl list-unit-files spice-vdagentd.service >/dev/null 2>&1; then
  sudo systemctl start spice-vdagentd.service
fi

echo
echo "Done."
echo "In UTM on macOS, also enable: VM settings -> Sharing -> Clipboard Sharing."
echo "If clipboard sharing does not start immediately, reboot the VM."

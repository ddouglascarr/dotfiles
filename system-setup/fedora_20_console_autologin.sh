#!/usr/bin/env bash
set -euo pipefail

AUTOLOGIN_USER="${1:-${SUDO_USER:-$(id -un)}}"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
GETTY_DROPIN_DIR="/etc/systemd/system/getty@tty1.service.d"
GETTY_DROPIN="${GETTY_DROPIN_DIR}/autologin.conf"
AUTOLOGIN_HOME="$(getent passwd "${AUTOLOGIN_USER}" | cut -d: -f6)"

if [ "${AUTOLOGIN_USER}" = "root" ]; then
  echo "Refusing to configure root autologin." >&2
  exit 1
fi

if [ -z "${AUTOLOGIN_HOME}" ]; then
  echo "Could not determine home directory for ${AUTOLOGIN_USER}." >&2
  exit 1
fi

echo "Linking bash login profile..."
sudo -u "${AUTOLOGIN_USER}" ln -sfn "${REPO_ROOT}/bash_profile" "${AUTOLOGIN_HOME}/.bash_profile"

echo "Configuring tty1 autologin for ${AUTOLOGIN_USER}..."
sudo install -d -m 0755 "${GETTY_DROPIN_DIR}"
printf '[Service]\nExecStart=\nExecStart=-/sbin/agetty --autologin %s --noclear %%I $TERM\nType=idle\n' "${AUTOLOGIN_USER}" | sudo tee "${GETTY_DROPIN}" >/dev/null

echo "Disabling graphical login manager..."
sudo systemctl set-default graphical.target
sudo systemctl disable display-manager.service 2>/dev/null || true
sudo systemctl enable getty@tty1.service
sudo rm -f /etc/sddm.conf.d/90-sway-autologin.conf

sudo systemctl daemon-reload

echo
echo "Done."
echo "tty1 autologin: ${GETTY_DROPIN}"
echo "default target: graphical.target"

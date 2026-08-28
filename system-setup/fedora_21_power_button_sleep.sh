#!/usr/bin/env bash
set -euo pipefail

LOGIND_DROPIN_DIR="/etc/systemd/logind.conf.d"
LOGIND_DROPIN="${LOGIND_DROPIN_DIR}/50-power-button-sleep.conf"

sudo install -d -m 0755 "${LOGIND_DROPIN_DIR}"
printf '[Login]\nHandlePowerKey=suspend\n' | sudo tee "${LOGIND_DROPIN}" >/dev/null
sudo chmod 0644 "${LOGIND_DROPIN}"
sudo systemctl kill --kill-whom=main --signal=HUP systemd-logind.service

echo "Installed ${LOGIND_DROPIN}"

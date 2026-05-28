#!/usr/bin/env bash
set -euo pipefail

SUDO_USER_NAME="${USER:?}"
SUDOERS_FILE="/etc/sudoers.d/${SUDO_USER_NAME}-nopasswd"
TMP_FILE="$(mktemp)"

cleanup() {
  rm -f "${TMP_FILE}"
}
trap cleanup EXIT

printf '%s ALL=(ALL) NOPASSWD: ALL\n' "${SUDO_USER_NAME}" > "${TMP_FILE}"

sudo visudo -cf "${TMP_FILE}"
sudo install -o root -g root -m 0440 "${TMP_FILE}" "${SUDOERS_FILE}"

echo "Installed ${SUDOERS_FILE}"

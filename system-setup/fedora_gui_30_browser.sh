#!/bin/bash
set -euo pipefail

BROWSER_DESKTOP="chromium-browser.desktop"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
DESKTOP_DIR="${HOME}/.local/share/applications"
DEV_DESKTOP_SRC="${REPO_ROOT}/chromium-dev.desktop"
DEV_DESKTOP_FILE="${DESKTOP_DIR}/chromium-dev.desktop"

env -u BROWSER xdg-settings set default-web-browser "${BROWSER_DESKTOP}"
env -u BROWSER xdg-mime default "${BROWSER_DESKTOP}" x-scheme-handler/http
env -u BROWSER xdg-mime default "${BROWSER_DESKTOP}" x-scheme-handler/https
env -u BROWSER xdg-mime default "${BROWSER_DESKTOP}" text/html

mkdir -p "${DESKTOP_DIR}"
ln -sfn "${DEV_DESKTOP_SRC}" "${DEV_DESKTOP_FILE}"

if command -v update-desktop-database >/dev/null 2>&1; then
  update-desktop-database "${DESKTOP_DIR}" || true
fi

echo "Default browser set to ${BROWSER_DESKTOP}"
echo "Desktop entry: ${DEV_DESKTOP_FILE}"

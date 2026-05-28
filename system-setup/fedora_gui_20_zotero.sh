#!/usr/bin/env bash
set -euo pipefail

URL="https://www.zotero.org/download/client/dl?channel=release&platform=linux-arm64"
APP_DIR="${HOME}/.local/share/zotero"
BIN_DIR="${HOME}/.local/bin"
DESKTOP_DIR="${HOME}/.local/share/applications"
DESKTOP_FILE="${DESKTOP_DIR}/zotero.desktop"

tmpdir="$(mktemp -d /tmp/zotero-install.XXXXXX)"
cleanup() {
  rm -rf "${tmpdir}"
}
trap cleanup EXIT

archive="${tmpdir}/zotero.tar"

echo "Downloading Zotero..."
curl -L --fail -o "${archive}" "${URL}"

echo "Unpacking Zotero..."
tar -xf "${archive}" -C "${tmpdir}"

src_dir="${tmpdir}/Zotero_linux-arm64"
if [ ! -x "${src_dir}/zotero" ]; then
  echo "Zotero launcher not found in archive" >&2
  exit 1
fi

echo "Installing Zotero..."
install -d "${HOME}/.local/share" "${BIN_DIR}" "${DESKTOP_DIR}"
rm -rf "${APP_DIR}"
mv "${src_dir}" "${APP_DIR}"
ln -sfn "${APP_DIR}/zotero" "${BIN_DIR}/zotero"

sed \
  -e "s@^Exec=.*@Exec=${APP_DIR}/zotero -url %U@" \
  -e "s@^Icon=.*@Icon=${APP_DIR}/icons/icon128.png@" \
  "${APP_DIR}/zotero.desktop" > "${DESKTOP_FILE}"
chmod 0644 "${DESKTOP_FILE}"

if command -v update-desktop-database >/dev/null 2>&1; then
  update-desktop-database "${DESKTOP_DIR}" || true
fi

echo
echo "Done."
echo "Zotero binary: ${BIN_DIR}/zotero"
echo "Desktop entry: ${DESKTOP_FILE}"

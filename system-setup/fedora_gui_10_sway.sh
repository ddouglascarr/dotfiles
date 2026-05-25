#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
SWAY_CONFIG_SRC="${REPO_ROOT}/config/sway"
SWAY_CONFIG_DST="${HOME}/.config/sway"
AUTOLOGIN_USER="$(id -un)"
SDDM_AUTOLOGIN_CONF="/etc/sddm.conf.d/90-sway-autologin.conf"

PACKAGES=(
  alacritty
  brightnessctl
  grim
  mako
  playerctl
  pulseaudio-utils
  slurp
  sway
  swayidle
  swaylock
  waybar
  wl-clipboard
  wofi
  xdg-desktop-portal-wlr
)

echo "Installing Sway packages..."
sudo dnf install -y "${PACKAGES[@]}"

echo "Linking Sway config..."
mkdir -p "${HOME}/.config"
ln -sfnT "${SWAY_CONFIG_SRC}" "${SWAY_CONFIG_DST}"

echo "Configuring SDDM autologin for ${AUTOLOGIN_USER}..."
sudo install -d -m 0755 /etc/sddm.conf.d
printf '[Autologin]\nUser=%s\nSession=sway.desktop\n' "${AUTOLOGIN_USER}" | sudo tee "${SDDM_AUTOLOGIN_CONF}" >/dev/null

echo
echo "Done."
echo "Sway config: ${SWAY_CONFIG_DST} -> ${SWAY_CONFIG_SRC}"
echo "SDDM autologin: ${SDDM_AUTOLOGIN_CONF}"

#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
SWAY_CONFIG_SRC="${REPO_ROOT}/config/sway"
SWAY_CONFIG_DST="${HOME}/.config/sway"
WAYBAR_CONFIG_SRC="${REPO_ROOT}/config/waybar"
WAYBAR_CONFIG_DST="${HOME}/.config/waybar"
SWAY_ENV_CONF="/etc/environment.d/90-sway-utm.conf"

PACKAGES=(
  foot
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
ln -sfnT "${WAYBAR_CONFIG_SRC}" "${WAYBAR_CONFIG_DST}"

echo "Configuring UTM/wlroots environment..."
sudo install -d -m 0755 /etc/environment.d
printf 'WLR_NO_HARDWARE_CURSORS=1\n' | sudo tee "${SWAY_ENV_CONF}" >/dev/null

echo
echo "Done."
echo "Sway config: ${SWAY_CONFIG_DST} -> ${SWAY_CONFIG_SRC}"
echo "Sway environment: ${SWAY_ENV_CONF}"

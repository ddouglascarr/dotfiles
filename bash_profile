export WLR_NO_HARDWARE_CURSORS=1
if [ "$(tty)" = "/dev/tty1" ] && [ -z "${WAYLAND_DISPLAY:-}" ] && [ -z "${DISPLAY:-}" ] && command -v sway >/dev/null 2>&1; then
  exec sway
fi

if [ -f "${HOME}/.bashrc" ]; then
  . "${HOME}/.bashrc"
fi

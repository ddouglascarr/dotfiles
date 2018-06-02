#!/bin/bash
set -euo pipefail

# Set overlay key to Alt_R
dconf write /org/gnome/mutter/overlay-key "'Alt_R'"

dconf write /org/gnome/software/allow-updates "false"
dconf write /org/gnome/software/download-updates "false"

dconf write /org/gnome/desktop/input-sources/xkb-options "['terminate:ctrl_alt_bksp', 'caps:escape', 'nbsp:level4', 'numpad:mac', 'shift:both_capslock']"

dconf write /org/gnome/shell/enabled-extensions "[ \
  'alternate-tab@gnome-shell-extensions.gcampax.github.com', \
  'launch-new-instance@gnome-shell-extensions.gcampax.github.com' \
]"


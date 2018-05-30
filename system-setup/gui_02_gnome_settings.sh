#!/bin/bash
set -euo pipefail

# Set overlay key to Alt_R
dconf write /org/gnome/mutter/overlay-key "'Alt_R'"

dconf write /org/gnome/software/allow-updates "false"
dconf write /org/gnome/software/download-updates "false"

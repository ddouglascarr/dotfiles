#!/usr/bin/env sh
set -euo pipefail

doas groupadd mediashare
doas usermod -G mediashare daniel
doas usermod -G mediashare _minidlna

doas mkdir -p /usr/local/share/media/dlna
doas chgrp mediashare /usr/local/share/media/dlna
doas chmod 775 /usr/local/share/media/dlna

doas rm /etc/minidlna.conf
doas ln -s /home/daniel/src/dotfiles/ddcbsd/etc/minidlna.conf /etc/minidlna.conf

doas rcctl enable minidlna
doas rcctl start minidlna

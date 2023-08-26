#!/usr/bin/env sh
set -euo pipefail

TORRENT_DIR=/usr/local/share/media/torrents
DLNA_DIR=/usr/local/share/media/dlna

doas mkdir -p "${TORRENT_DIR}"
doas chown _transmission "${TORRENT_DIR}"
doas usermod -G mediashare _transmission

doas rcctl set transmission_daemon flags "-a *.*.*.* -B --auth --username daniel --password u13chester --download-dir ${DLNA_DIR} --incomplete-dir ${TORRENT_DIR}"
doas rcctl enable transmission_daemon



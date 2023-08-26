#!/bin/sh
set -euo pipefail

doas tar -chf ./site.tar \
  /etc/rc.local \
  /etc/rc.shutdown \
  /etc/minidlna.conf \
  /etc/relayd.conf \
  /etc/doas.conf \
  /etc/ssh \
  etc/rc.firsttime  # script from this repo to be run after reboot

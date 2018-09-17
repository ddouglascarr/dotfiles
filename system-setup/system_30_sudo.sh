#!/bin/bash
set -euo pipefail

echo '%sudo  ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/10-nopasswd.conf
chmod 0440 /etc/sudoers.d/10-nopasswd.conf

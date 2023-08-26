#!/usr/bin/env sh
set -euo pipefail

# enabling httpd sets up the flags and the home dir
doas rcctl enable httpd

doas cp -R /home/daniel/src/dotfiles/ddcbsd/var/www/htdocs/* /var/www/htdocs/

doas rcctl stop httpd
doas rcctl start httpd

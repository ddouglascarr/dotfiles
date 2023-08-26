#/usr/bin/env sh

# settings are in rc.conf.local
if grep -q '^multicast=' /etc/rc.conf.local; then
    doas sed -i 's/^multicast=.*/multicast=YES/' /etc/rc.conf.local
else
    echo "multicast=YES" | doas tee -a /etc/rc.conf.local
fi

doas rcctl set mdnsd flags re0

doas rcctl enable mdnsd

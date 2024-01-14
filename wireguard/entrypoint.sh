#!/bin/sh

sed -i "s:sysctl -q net.ipv4.conf.all.src_valid_mark=1:echo Skipping setting net.ipv4.conf.all.src_valid_mark:" /usr/bin/wg-quick

set -e
ifname=$(basename $(ls -1 /etc/wireguard/*.conf | head -1) .conf)
wg-quick up /etc/wireguard/$ifname.conf
sed -i'' -e "s/__replace_me_ifname__/$ifname/" /etc/sockd.conf
/usr/sbin/sockd
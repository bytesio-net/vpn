#!/bin/sh

# Start OpenVPN in the background
openvpn --config /etc/openvpn/client.ovpn --auth-user-pass /etc/openvpn/credentials --log /var/log/openvpn.log &

# Give some time for OpenVPN to initialize
sleep 10

# Start sockd in the foreground and keep the script running
sockd -D -f /etc/sockd.conf
tail -f /dev/null

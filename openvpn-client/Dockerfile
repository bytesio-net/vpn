# Use an Alpine Linux as the base image
FROM alpine:3.19

# Install OpenVPN
RUN apk add openvpn
RUN chmod 666 /dev/net/tun
# COPY ./client.ovpn /etc/openvpn/client.ovpn
# COPY ./credentials /etc/openvpn/credentials

# Set the entry point to start the OpenVPN client
ENTRYPOINT ["openvpn", "--config", "/etc/openvpn/client.ovpn", "--auth-user-pass", "/etc/openvpn/credentials"]

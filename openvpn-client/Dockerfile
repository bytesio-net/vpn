# Use an Alpine Linux as the base image
FROM alpine:3.19

# Install OpenVPN and socat
RUN apk add openvpn dante-server bash openresolv openrc \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /dev/net &&\
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun

COPY ./client.ovpn /etc/openvpn/client.ovpn
COPY ./credentials /etc/openvpn/credentials
COPY ./sockd.conf /etc/sockd.conf
COPY ./entrypoint.sh /etc/entrypoint.sh

# replace Windows to Linux file format decode issue
RUN sed -i 's/\r$//' /etc/sockd.conf

# log dir
RUN mkdir /var/log/danted/

RUN chmod +x /etc/entrypoint.sh

ENTRYPOINT ["/etc/entrypoint.sh"]
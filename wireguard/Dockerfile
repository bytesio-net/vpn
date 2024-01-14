# Use an Alpine Linux as the base image
FROM alpine:3.19

# Install OpenVPN and socat
RUN apk add --update-cache dante-server wireguard-tools openresolv ip6tables curl\
    && rm -rf /var/cache/apk/*

COPY ./wg_client.conf /etc/wireguard/wg0.conf
COPY ./sockd.conf /etc/sockd.conf
COPY ./entrypoint.sh /etc/entrypoint.sh

# replace Windows to Linux file format decode issue
RUN sed -i 's/\r$//' /etc/sockd.conf

# log dir
RUN mkdir /var/log/danted/

RUN chmod +x /etc/entrypoint.sh

ENTRYPOINT ["/etc/entrypoint.sh"]
FROM alpine:latest

RUN apk add curl unzip tzdata

RUN curl -L -o /tmp/v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip /tmp/v2ray.zip -d /usr/local/bin/ && \
    rm /tmp/v2ray.zip

# COPY config.json /etc/v2ray/v2ray_config.json
# COPY cloudflare.crt /etc/v2ray/cloudflare.crt
# COPY private.key /etc/v2ray/private.key

RUN ln -s /usr/share/zoneinfo/Hongkong /etc/localtime

EXPOSE 8443

CMD ["/usr/local/bin/v2ray", "run", "-config", "/etc/v2ray/v2ray_config.json"]
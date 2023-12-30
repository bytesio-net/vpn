FROM alpine:3.16.8

RUN apk add --no-cache nginx \
    && rm -rf /var/cache/apk/* \
    && mkdir -p /data

# COPY nginx.conf /etc/nginx/http.d/default.conf
# COPY cloudflare.crt /etc/nginx/ssl/cloudflare.crt
# COPY private.key /etc/nginx/ssl/private.key

RUN cp -r /etc/nginx/nginx.conf /etc/nginx/http.d/default.conf

RUN mkdir -p /run/nginx
EXPOSE 443 80

CMD ["nginx", "-g", "daemon off;"]
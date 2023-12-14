# VPN (v2ray Server + OpenVPN Client)

Provides simple secure VPN setup that combines a V2Ray server with an OpenVPN client. With the OpenVPN client, you can use your router's OpenVPN server, meaning the VPN can using your own IP address to access some regional services like ViuTV, MyTV, and more.

## Setup
```bash
.
├── openvpn-client
│   ├── Dockerfile
│   ├── client.ovpn  # Please put your openvpn config file here
│   └── credentials  # Login Username (first line) and Password (second line)
└── v2ray
    ├── Dockerfile
    ├── cloudflare.crt   # your domain CA cert
    ├── private.key      # Domain Private key
    └── v2ray_config.json

```

## Start Service
```bash
docker-compose up -d
```

## Set Your TimeZone for v2ray Server

To view all available time zones, use the timedatectl command or list the files in the /usr/share/zoneinfo directory:

```bash
timedatectl list-timezones
```

Then, please change the ./v2ray/Dockerfile at line 13
```bash
RUN ln -s /usr/share/zoneinfo/Hongkong /etc/localtime
```
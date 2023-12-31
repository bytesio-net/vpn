# VPN (v2ray Server + OpenVPN Client)

Provides simple secure VPN setup that combines a V2Ray server with an OpenVPN client. With the OpenVPN client, you can use your router's OpenVPN server, meaning the VPN can using your own IP address to access some regional services like ViuTV, MyTV, and more.

## Todo
- [x] Nginx Reverse proxy (TLS)
- [x] V2ray ws Server
- [x] OpenVPN Client/Server with Socks5 Proxy
- [ ] Integrate v2ray and openvpn client

## Setup
```bash
.
├── nginx
│   ├── Dockerfile
│   ├── nginx.conf
│   └── ssl
│       ├── cloudflare.pem  # CA cert
│       └── private.pem     # Private Key
├── openvpn-client
│   ├── Dockerfile
│   ├── client.ovpn         # Please put your openvpn config file here
│   └── credentials         # Login Username (first line) and Password (second line)
├── setup                   # Setup Shell Script
│   ├── amazon-linux.sh
│   └── ubuntu.sh
└── v2ray
    ├── Dockerfile
    └── v2ray_config.json   # V2ray Config
```

## Start Service
```bash
git clone https://github.com/bytesio-net/vpn.git
cd vpn
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
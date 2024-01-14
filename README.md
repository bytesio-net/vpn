# VPN (v2ray Server + Wireguard Client)

Provides simple secure VPN setup that combines a V2Ray server with an OpenVPN client. With the Wireguard client, you can use your router as Wireguard server, meaning the VPN can using your own IP address to access some regional services like ViuTV, MyTV, and more.

## Todo
- [x] Nginx Reverse proxy (TLS)
- [x] V2ray ws Server
- [x] Wireguard Client with Socks5 Proxy
- [x] Integrate v2ray and Wireguard client
- [ ] Start Script

## Setup
```bash
.
├── README.md
├── docker-compose.yml
├── nginx
│   └── ssl
│       ├── cloudflare.pem  # CA cert
│       └── private.pem     # Private Key
│   ├── Dockerfile
│   └── nginx.conf
├── setup                   # Setup Shell Script
│   ├── amazon-linux.sh
│   └── ubuntu.sh
├── v2ray                   
│   ├── Dockerfile
│   └── v2ray_config.json   # V2ray config file
└── wireguard
    ├── Dockerfile
    ├── entrypoint.sh
    ├── sockd.conf          # Socks5 Proxy config file
    └── wg_client.conf      # Wireguard client config file (gen by router)

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
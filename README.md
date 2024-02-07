Normal README için https://github.com/heiher/hev-socks5-tunnel 'e bakın.


# Conf dosyası
Benim kullandığım;
```bash
tunnel:
  # Interface name
  name: tun0
  # Interface MTU
  mtu: 1500
  # Multi-queue
  multi-queue: false
  # IPv4 address
  ipv4: 10.0.0.1
  # IPv6 address
  ipv6: 'fc00::1'
  # Post up script
# post-up-script: up.sh
  # Pre down script
# pre-down-script: down.sh

socks5:
  # Socks5 server port
  port: 1080
  # Socks5 server address (ipv4/ipv6)
  address: 192.168.1.103
  # Socks5 UDP relay mode (tcp|udp)
  udp: 'tcp'
  # Socks5 handshake using pipeline mode
# pipeline: false
  # Socks5 server username
# username: 'username'
  # Socks5 server password
# password: 'password'
  # Socket mark
# mark: 0

#misc:
   # task stack size (bytes)
#  task-stack-size: 20480
   # connect timeout (ms)
#  connect-timeout: 5000
   # read-write timeout (ms)
#  read-write-timeout: 60000
   # stdout, stderr or file-path
#  log-file: stderr
   # debug, info, warn or error
#  log-level: warn
   # If present, run as a daemon with this pid file
#  pid-file: /run/hev-socks5-tunnel.pid
   # If present, set rlimit nofile; else use default value
#  limit-nofile: 65535

```

# İnternet protokolü rotaları için
```bash
sudo ip route del default               
sudo ip route add default dev tun0
```

# V2ray, shadowsocks vs. için

V2ray ve shadowsocksun bağlandığı sunucunun public ip adresini şu şekil girin;

```bash
sudo ip route add server_pulic_ip/32 via modem/router_defdault_gateway dev internet_interface
```
# Örnek

```bash
 sudo ip route add 149.91.1.15/32 via 192.168.1.1 dev enp3s0
```

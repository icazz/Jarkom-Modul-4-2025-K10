#!/bin/bash

# [A18] Interface ke Amonsul (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.230
    netmask 255.216.255.252

# [A8] Interface ke LAN Mirkwood/Mergul (eth1)
auto eth1
iface eth1 inet static
    address 192.216.14.1
    netmask 255.255.255.128

# [SISA 3] Interface ke Numeror (eth2)
auto eth2
iface eth2 inet static
    address 192.216.15.245
    netmask 255.255.255.252
up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Amonsul
# Rute ke bawah via Numeror (Next Hop: 192.216.15.246)
route add -net 192.216.15.224 netmask 255.255.255.252 gw 192.216.15.246 # A17
route add -net 192.216.14.128 netmask 255.255.255.128 gw 192.216.15.246 # A9
route add -net 192.216.15.160 netmask 255.255.255.240 gw 192.216.15.246 # A10
route add -net 192.216.0.0 netmask 255.255.252.0 gw 192.216.15.246     # A11
route add -net 192.216.15.216 netmask 255.255.255.252 gw 192.216.15.246 # A15
route add -net 192.216.15.212 netmask 255.255.255.252 gw 192.216.15.246 # A14
route add -net 192.216.8.0 netmask 255.255.254.0 gw 192.216.15.246     # A12
route add -net 192.216.10.0 netmask 255.255.254.0 gw 192.216.15.246    # A13

# Rute default ke atas
route add default gw 192.216.15.229

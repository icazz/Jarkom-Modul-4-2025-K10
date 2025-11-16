#!/bin/bash

# [A23] Interface ke Amonsul (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.234
    netmask 255.255.255.252

# [A22] Interface ke Switch13 (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.193
    netmask 255.255.255.248
up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Amonsul
# Rute ke bawah via Valinor (Next Hop: 192.216.15.194)
route add -net 192.216.12.0 netmask 255.255.254.0 gw 192.216.15.194

# Rute ke bawah via Valmar (Next Hop: 192.216.15.195)
route add -net 192.216.15.128 netmask 255.255.255.224 gw 192.216.15.195
route add -net 192.216.15.64 netmask 255.255.255.192 gw 192.216.15.195

# Rute default ke atas
route add default gw 192.216.15.233
#!/bin/bash

# [SISA 1] Interface ke Minastir (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.238
    netmask 255.255.255.252

# [A4] Interface ke Switch1 (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.185
    netmask 255.255.255.248
up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Minastir
# Rute ke bawah via Morgoth (Next Hop: 192.216.15.186)
route add -net 192.216.15.0 netmask 255.255.255.192 gw 192.216.15.186

# Rute ke bawah via Throne (Next Hop: 192.216.15.187)
route add -net 192.216.15.176 netmask 255.255.255.248 gw 192.216.15.187

# Rute default ke atas
route add default gw 192.216.15.237
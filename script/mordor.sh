#!/bin/bash

# [A15] Interface ke Numeror (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.218
    netmask 255.255.255.252

# [A14] Interface ke Erain (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.213
    netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Numeror
# Rute ke bawah via Erain (Next Hop: 192.216.15.214)
route add -net 192.216.8.0 netmask 255.255.254.0 gw 192.216.15.214
route add -net 192.216.10.0 netmask 255.255.254.0 gw 192.216.15.214

# Rute default ke atas
route add default gw 192.216.15.217
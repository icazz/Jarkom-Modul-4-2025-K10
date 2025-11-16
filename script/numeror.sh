#!/bin/bash

# [SISA 3] Interface ke Eregion (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.246
    netmask 255.255.255.252

# [A17] Interface ke Gudur (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.225
    netmask 255.255.255.252

# [A11] Interface ke LAN Arthedain/Mirdain (eth2)
auto eth2
iface eth2 inet static
    address 192.216.0.1
    netmask 255.255.252.0

# [A15] Interface ke Mordor (eth3)
auto eth3
iface eth3 inet static
    address 192.216.15.217
    netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Eregion
# Rute ke bawah via Gudur (Next Hop: 192.216.15.226)
route add -net 192.216.14.128 netmask 255.255.255.128 gw 192.216.15.226
route add -net 192.216.15.160 netmask 255.255.255.240 gw 192.216.15.226

# Rute ke bawah via Mordor (Next Hop: 192.216.15.218)
route add -net 192.216.15.212 netmask 255.255.255.252 gw 192.216.15.218
route add -net 192.216.8.0 netmask 255.255.254.0 gw 192.216.15.218
route add -net 192.216.10.0 netmask 255.255.254.0 gw 192.216.15.218

# Rute default ke atas
route add default gw 192.216.15.245
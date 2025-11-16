#!/bin/bash

# [A4] Interface ke Switch1 (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.187
    netmask 255.255.255.248

# [A2] Interface ke LAN Erebor (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.177
    netmask 255.255.255.248

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Amroth
# Rute spesifik ke LAN saudaranya (Morgoth)
route add -net 192.216.15.0 netmask 255.255.255.192 gw 192.216.15.186

# Rute default ke atas
route add default gw 192.216.15.185
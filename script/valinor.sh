#!/bin/bash

# [A22] Interface ke Switch13 (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.194
    netmask 255.255.255.248

# [A19] Interface ke LAN Shadow/Anarion/Lindon (eth1)
auto eth1
iface eth1 inet static
    address 192.216.12.1
    netmask 255.255.254.0

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Fornost
# Rute spesifik ke LAN saudaranya (Valmar)
route add -net 192.216.15.128 netmask 255.255.255.224 gw 192.216.15.195
route add -net 192.216.15.64 netmask 255.255.255.192 gw 192.216.15.195

# Rute default ke atas
route add default gw 192.216.15.193
#!/bin/bash

# [A4] Interface ke Switch1 (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.186
    netmask 255.255.255.248

# [A1] Interface ke LAN Erendis/Elrond (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.1
    netmask 255.255.255.192

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Amroth
# Rute spesifik ke LAN saudaranya (Throne)
route add -net 192.216.15.176 netmask 255.255.255.248 gw 192.216.15.187
# Rute default ke atas
route add default gw 192.216.15.185
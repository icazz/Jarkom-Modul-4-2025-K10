#!/bin/bash

# [A14] Interface ke Mordor (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.214
    netmask 255.255.255.252

# [A12] Interface ke LAN Melkor/Khazad (eth1)
auto eth1
iface eth1 inet static
    address 192.216.8.1
    netmask 255.255.254.0

# [A13] Interface ke LAN Balrog/dll (eth2)
auto eth2
iface eth2 inet static
    address 192.216.10.1
    netmask 255.255.254.0
up echo nameserver 192.168.122.1 > /etc/resolv.conf
route add default gw 192.216.15.213 # via Mordor

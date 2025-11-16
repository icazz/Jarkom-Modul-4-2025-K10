#!/bin/bash

# [A6] Interface ke Minastir (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.206
    netmask 255.255.255.252

# [A3] Interface ke LAN Beacon/Silmarils (eth1)
auto eth1
iface eth1 inet static
    address 192.216.4.1
    netmask 255.255.252.0
up echo nameserver 192.168.122.1 > /etc/resolv.conf

route add default gw 192.216.15.205 # via Minastir
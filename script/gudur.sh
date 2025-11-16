#!/bin/bash

# [A17] Interface ke Numeror (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.226
    netmask 255.255.255.252

# [A9] Interface ke LAN Palantir/Edhil (eth1)
auto eth1
iface eth1 inet static
    address 192.216.14.129
    netmask 255.255.255.128

# [A10] Interface ke LAN IronCrown/dll (eth2)
auto eth2
iface eth2 inet static
    address 192.216.15.161
    netmask 255.255.255.240

up echo nameserver 192.168.122.1 > /etc/resolv.conf
route add default gw 192.216.15.225 # via Numeror
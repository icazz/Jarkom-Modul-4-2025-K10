#!/bin/bash

# [A22] Interface ke Switch13 (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.195
    netmask 255.255.255.248

# [A20] Interface ke LAN Doriath/Arnor (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.129
    netmask 255.255.255.224

# [A21] Interface ke LAN Imrahil/Utumno/Gwaith (eth2)
auto eth2
iface eth2 inet static
    address 192.216.15.65
    netmask 255.255.255.192

up echo nameserver 192.168.122.1 > /etc/resolv.conf
# via Fornost
# Rute spesifik ke LAN saudaranya (Valinor)
route add -net 192.216.12.0 netmask 255.255.254.0 gw 192.216.15.194

# Rute default ke atas
route add default gw 192.216.15.193
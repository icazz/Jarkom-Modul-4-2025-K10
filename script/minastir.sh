#!/bin/bash

# [A7] Interface ke AmonSul (eth0)
auto eth0
iface eth0 inet static
    address 192.216.15.210
    netmask 255.255.255.252

# [SISA 1] Interface ke Amroth (eth1)
auto eth1
iface eth1 inet static
    address 192.216.15.237
    netmask 255.255.255.252

# [A6] Interface ke Anor (eth2)
auto eth2
iface eth2 inet static
    address 192.216.15.205
    netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf

# Rute ke bawah via Anor (Next Hop: 192.216.15.206)
route add -net 192.216.4.0 netmask 255.255.252.0 gw 192.216.15.206 

# Rute ke bawah via Amroth (Next Hop: 192.216.15.238)
route add -net 192.216.15.184 netmask 255.255.255.248 gw 192.216.15.238 # Amroth, Morgoth, dan Throne
route add -net 192.216.15.0 netmask 255.255.255.192 gw 192.216.15.238 # Erendis dan Elrond
route add -net 192.216.15.176 netmask 255.255.255.248 gw 192.216.15.238 # Erebor
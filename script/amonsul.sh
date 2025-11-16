#!/bin/bash

# [eth0] Interface ke NAT1
auto eth0
iface eth0 inet dhcp

# [eth1] Interface ke MinasTir (A7)
auto eth1
iface eth1 inet static
    address 192.216.15.209
    netmask 255.255.255.252

# [eth2] Interface ke Eregion (A18)
auto eth2
iface eth2 inet static
    address 192.216.15.229
    netmask 255.255.255.252

# [eth3] Interface ke Fornost (A23)
auto eth3
iface eth3 inet static
    address 192.216.15.233
    netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf

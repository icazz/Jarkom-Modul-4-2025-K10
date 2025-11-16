#!/bin/bash

# Interface utama ke Throne
auto eth0
iface eth0 inet static
    address 192.216.15.178
    netmask 255.255.255.248
    gateway 192.216.15.177
up echo nameserver 192.168.122.1 > /etc/resolv.conf
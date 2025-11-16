#!/bin/bash

auto eth0
iface eth0 inet static
    address 192.216.15.131
    netmask 255.255.255.224
    gateway 192.216.15.129
up echo nameserver 192.168.122.1 > /etc/resolv.conf
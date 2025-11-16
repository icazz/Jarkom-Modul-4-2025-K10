#!/bin/bash

auto eth0
iface eth0 inet static
    address 192.216.15.66
    netmask 255.255.255.192
    gateway 192.216.15.65
up echo nameserver 192.168.122.1 > /etc/resolv.conf
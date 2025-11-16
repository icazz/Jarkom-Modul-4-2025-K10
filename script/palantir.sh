#!/bin/bash

auto eth0
iface eth0 inet static
    address 192.216.14.130
    netmask 255.255.255.128
    gateway 192.216.14.129
up echo nameserver 192.168.122.1 > /etc/resolv.conf
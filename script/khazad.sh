#!/bin/bash

auto eth0
iface eth0 inet static
    address 192.216.8.3
    netmask 255.255.254.0
    gateway 192.216.8.1
up echo nameserver 192.168.122.1 > /etc/resolv.conf
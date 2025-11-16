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

# Amonsul -> Jaringan Anor
route add -net 192.216.15.204 netmask 255.255.255.252 gw 192.216.15.210 # Rute ke A6 (WAN Minastir-Anor)
route add -net 192.216.4.0 netmask 255.255.252.0 gw 192.216.15.210     # Rute ke A3 (LAN Beacon/Silmarils)

# Amonsul -> Jaringan Amroth
route add -net 192.216.15.236 netmask 255.255.255.252 gw 192.216.15.210 # Rute ke SISA 1 (WAN Minastir-Amroth)
route add -net 192.216.15.184 netmask 255.255.255.248 gw 192.216.15.210 # Rute ke A4 (WAN Amroth-Morgoth-Throne)
route add -net 192.216.15.0 netmask 255.255.255.192 gw 192.216.15.210   # Rute ke A1 (LAN Erendis/Elrond)
route add -net 192.216.15.176 netmask 255.255.255.248 gw 192.216.15.210 # Rute ke A2 (LAN Erebor)

# Amonsul -> Jaringan Eregion
route add -net 192.216.14.0 netmask 255.255.255.128 gw 192.216.15.230 # Rute ke A8 (LAN Mirkwood/Mergul)

# Amonsul -> Jaringan Numeror (via Eregion)
route add -net 192.216.15.244 netmask 255.255.255.252 gw 192.216.15.230 # Rute ke SISA 3 (WAN Eregion-Numeror)
route add -net 192.216.0.0 netmask 255.255.252.0 gw 192.216.15.230     # Rute ke A11 (LAN Arthedain/Mirdain)

# Amonsul -> Jaringan Gudur (via Eregion -> Numeror)
route add -net 192.216.15.224 netmask 255.255.255.252 gw 192.216.15.230 # Rute ke A17 (WAN Numeror-Gudur)
route add -net 192.216.14.128 netmask 255.255.255.128 gw 192.216.15.230 # Rute ke A9 (LAN Palantir/Edhil)
route add -net 192.216.15.160 netmask 255.255.255.240 gw 192.216.15.230 # Rute ke A10 (LAN IronCrown/dll)

# Amonsul -> Jaringan Mordor/Erain (via Eregion -> Numeror)
route add -net 192.216.15.216 netmask 255.255.255.252 gw 192.216.15.230 # Rute ke A15 (WAN Numeror-Mordor)
route add -net 192.216.15.212 netmask 255.255.255.252 gw 192.216.15.230 # Rute ke A14 (WAN Mordor-Erain)
route add -net 192.216.8.0 netmask 255.255.254.0 gw 192.216.15.230     # Rute ke A12 (LAN Melkor/Khazad)
route add -net 192.216.10.0 netmask 255.255.254.0 gw 192.216.15.230    # Rute ke A13 (LAN Balrog/dll)

# Amonsul -> Jaringan Valinor/Valmar
route add -net 192.216.15.192 netmask 255.255.255.248 gw 192.216.15.234 # Rute ke A22 (WAN Switch13)
route add -net 192.216.12.0 netmask 255.255.254.0 gw 192.216.15.234     # Rute ke A19 (LAN Shadow/dll)
route add -net 192.216.15.128 netmask 255.255.255.224 gw 192.216.15.234 # Rute ke A20 (LAN Doriath/Arnor)
route add -net 192.216.15.64 netmask 255.255.255.192 gw 192.216.15.234  # Rute ke A21 (LAN Imrahil/dll)

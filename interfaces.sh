#!/usr/bin/env bash

cat <<EOF > /etc/network/interfaces
# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug eth1
allow-hotplug xen-br0

auto xen-br0
iface xen-br0 inet static
EOF
echo "   address $1" >> /etc/network/interfaces
cat <<EOF >> /etc/network/interfaces
   netmask 255.255.255.0
   network 33.33.33.0
   broadcast 33.33.33.255
   dns-search example.org
   dns-domain example.org
   bridge_ports eth1
   bridge_stp off
   bridge_fd 0

auto eth2
iface eth2 inet static
EOF
echo "    address $2" >> /etc/network/interfaces
cat <<EOF >> /etc/network/interfaces
    netmask 255.255.255.0
    network 33.33.34.0
    broadcast 33.33.34.255

auto eth0
iface eth0 inet dhcp
EOF

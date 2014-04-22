#!/bin/bash

cd /root
git clone ganeti ganeti2

cd ganeti2
./autogen.sh
./configure --prefix=/usr/local --sysconfdir=/etc --localstatedir=/var --enable-symlinks '--with-ssh-initscript=service ssh'
make
make install
cp doc/examples/ganeti.initd /etc/init.d/ganeti
chmod u+x /etc/init.d/ganeti
cd ..

git clone instance-debootstrap instance-debootstrap2
cd instance-debootstrap2
./autogen.sh
./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc --with-os-dir=/srv/ganeti/os
make
make install

ln -s /boot/vmlinuz-3.11.0-18-generic /boot/vmlinuz-3-kvmU
ln -s /boot/initrd.img-3.11.0-18-generic /boot/initrd-3-kvmU

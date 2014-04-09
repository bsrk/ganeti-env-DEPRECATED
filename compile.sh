#!/bin/bash

cd /root
git clone ganeti ganeti2
cd ganeti2
./autogen.sh
./configure --prefix=/usr/local --sysconfdir=/etc --localstatedir=/var --enable-symlinks '--with-ssh-initscript=service ssh'
make
make install
cd ..
git clone instance-debootstrap instance-debootstrap2
cd instance-debootstrap2
./autogen.sh
./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc --with-os-dir=/srv/ganeti/os
make
make install

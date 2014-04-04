#!/usr/bin/env bash

pvcreate /dev/sdb
vgcreate xenvg /dev/sdb

#apt-get update
#apt-get install -y haskell-platform

#!/usr/bin/env bash

pvcreate /dev/sdb
vgcreate xenvg /dev/sdb

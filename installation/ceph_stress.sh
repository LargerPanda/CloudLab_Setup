#!/bin/bash
sudo sgdisk --largest-new=3 /dev/sdb
mkdir /users/yushua/stressdir
mkfs.ext4 /dev/sdb3
sudo mount /dev/sdb3 /users/yushua/stressdir/

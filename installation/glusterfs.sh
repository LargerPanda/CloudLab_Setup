#!/bin/bash

#this script is for server node

cd ~
wget https://download.gluster.org/pub/gluster/glusterfs/6/6.1/glusterfs-6.1.tar.gz
tar -zxvf glusterfs-6.1.tar.gz
cd glusterfs-6.1
#need to modify config.sub and config.guess
./configure
make -j
sudo make install
echo "/usr/local/lib" >> /etc/ld.so.conf
sudo su
ldconfig
exit
sudo /usr/local/sbin/glusterd
sudo mkdir -p /data/glusterfs/volume1/brick1
sudo mkfs.xfs -f /dev/nvme0n1p4
sudo mount /dev/nvme0n1p4 /data/glusterfs/volume1/brick1
sudo mkdir /data/glusterfs/volume1/brick1/gv1
sudo /usr/local/sbin/gluster volume create gv1 node-2:/data/glusterfs/volume1/brick1/gv1
sudo /usr/local/sbin/gluster volume start gv1
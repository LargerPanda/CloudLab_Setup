#!/bin/bash

#this script is for server node
#sudo /usr/local/sbin/glusterd
#sudo mkfs.xfs -f /dev/nvme0n1p4
#sudo mkdir -p /data/glusterfs/volume1/brick1
#sudo mount /dev/nvme0n1p4 /data/glusterfs/volume1/brick1
#sudo chmod -R 777 /data
#mkdir /data/glusterfs/volume1/brick1/gv1
#sudo /usr/local/sbin/gluster volume stop gv1
#sudo /usr/local/sbin/gluster volume delete gv1
sudo /usr/local/sbin/gluster volume create gv1 ${HOSTNAME:0:6}:/data/glusterfs/volume1/brick1/gv1
sudo /usr/local/sbin/gluster volume start gv1

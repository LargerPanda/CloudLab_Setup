#!/bin/bash
mkdir /data/ost0
mkdir /data/ost1
mkdir /data/ost2
mkdir /data/ost3
mkdir /data/ost4
mkdir /data/ost5
mkdir /data/ost6
mkdir /data/ost7
mkdir /data/ost8
mkdir /data/ost9
mkdir /data/ost10
mkdir /data/ost11
mkdir /data/ost12
mkdir /data/ost13
mkdir /data/ost14
mkdir /data/ost15

sudo mount -t glusterfs node-0:/gv1 /data/ost0
sudo mount -t glusterfs node-1:/gv1 /data/ost1
sudo mount -t glusterfs node-2:/gv1 /data/ost2
sudo mount -t glusterfs node-3:/gv1 /data/ost3
sudo mount -t glusterfs node-4:/gv1 /data/ost4
sudo mount -t glusterfs node-5:/gv1 /data/ost5
sudo mount -t glusterfs node-6:/gv1 /data/ost6
sudo mount -t glusterfs node-7:/gv1 /data/ost7
sudo mount -t glusterfs node-8:/gv1 /data/ost8
sudo mount -t glusterfs node-9:/gv1 /data/ost9
sudo mount -t glusterfs node-10:/gv1 /data/ost10
sudo mount -t glusterfs node-11:/gv1 /data/ost11
sudo mount -t glusterfs node-12:/gv1 /data/ost12
sudo mount -t glusterfs node-13:/gv1 /data/ost13
sudo mount -t glusterfs node-14:/gv1 /data/ost14
sudo mount -t glusterfs node-15:/gv1 /data/ost15


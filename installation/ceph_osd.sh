#!/bin/bash
sudo chmod +r /etc/ceph/ceph.client.admin.keyring

IFS="."
arr=($HOSTNAME)
temp=${arr[0]}
i=`echo $temp | tr '-' '.'`
i=($i)
nodeid=${i[1]}
echo $nodeid 

osdid=`ceph osd create`
echo $osdid 

uuid1=`uuidgen`
uuid2=`uuidgen`

sudo /sbin/sgdisk --new=2:0:+5120M --change-name=2:'ceph journal' --partition-guid=2:$uuid1 --typecode=2:45b0969e-9b03-4f30-b4c6-b4b80ceff106 --mbrtogpt -- /dev/sdb
sudo /sbin/sgdisk --new=1:0:+500G --change-name=1:'ceph data' --partition-guid=1:$uuid2 --typecode=1:89c57f98-2fe5-4dc0-89c1-f3ad0ceff2be --mbrtogpt -- /dev/sdb

sudo mkfs.xfs /dev/sdb1
sudo mkfs.xfs /dev/sdb2

sudo mkdir /var/lib/ceph/osd/ceph-$osdid
sudo mount /dev/sdb1 /var/lib/ceph/osd/ceph-$osdid

sudo ceph-osd -i $osdid --mkfs --mkkey
sudo chown ceph:ceph -R /var/lib/ceph/osd/ceph-$osdid
sudo ceph auth add osd.$osdid osd 'allow *' mon 'allow profile osd' -i /var/lib/ceph/osd/ceph-$osdid/keyring

ceph osd crush add  osd.$osdid  1.086 host=node-$nodeid
ceph osd crush move node-$nodeid root=default

/users/yushua/env/ceph/bin/ceph-osd -f --cluster ceph --id $osdid --setuser ceph --setgroup ceph





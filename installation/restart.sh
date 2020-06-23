#!/bin/bash
echo "stop osds..."
for i in $(seq 0 2)
do
    echo "stop osd.$i"
    ssh node-$i "sudo systemctl stop ceph-osd@$i"
done

echo "disable dashboard..."
ceph mgr module disable dashboard
echo "stop mgr..."
sudo systemctl stop ceph-mgr@node-0
echo "restart mon..."
sudo systemctl restart ceph-mon@node-0

echo "start mgr..."
sudo systemctl start ceph-mgr@node-0
echo "enable dashboard..."
ceph mgr module enable dashboard

echo "start osds..."
for i in $(seq 0 2)
do
    echo "stop osd.$i"
    ssh node-$i "sudo systemctl start ceph-osd@$i"
done

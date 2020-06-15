#!/bin/bash
sudo yum install -y ceph-fuse
mkdir /users/yushua/cephfs
sudo ceph-fuse -m node-0:6789 /users/yushua/cephfs
sudo chown -R yushua /users/yushua/cephfs

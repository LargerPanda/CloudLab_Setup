#!/bin/bash
sudo yum -y install gdisk
sudo sgdisk -n 0:0:0 /dev/sdc -g
sudo mkfs.xfs /dev/sdc1 -f
mkdir /users/yushua/env
sudo mount /dev/sdc1 /users/yushua/env
sudo chown -R yushua /users/yushua/env
cd /users/yushua/env
git clone https://github.com/LargerPanda/ceph.git
mv /users/yushua/env/ceph /users/yushua/env/ceph-src
cd /users/yushua/env/ceph-src
./install-deps.sh
./autogen.sh
./configure --prefix=/users/yushua/env/ceph
make -j16
sudo make install


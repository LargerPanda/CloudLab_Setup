#!/bin/bash
sudo chmod +r /etc/ceph/ceph.client.admin.keyring
sudo chown -R yushua /usr/local/

#mkdir /users/yushua/env
#sudo mount -t nfs node-8:/users/yushua/env /users/yushua/env


cd /users/yushua/env/luminous/;./install_deps.sh
cd /users/yushua/env/luminous/build; make install

echo "replace launch position"
sudo sed -i 's/\/usr\/bin/\/users\/yushua\/env\/luminous\/build\/bin/' /usr/lib/systemd/system/ceph-osd@.service
sudo sed -i 's/\/usr\/bin/\/users\/yushua\/env\/luminous\/build\/bin/' /usr/lib/systemd/system/ceph-mon@.service
sudo sed -i 's/\/usr\/bin/\/users\/yushua\/env\/luminous\/build\/bin/' /usr/lib/systemd/system/ceph-mgr@.service

sudo systemctl daemon-reload
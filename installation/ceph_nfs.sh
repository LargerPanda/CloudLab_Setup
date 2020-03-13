#!/bin/bash
sudo  yum install nfs* rpcbind -y
sudo su
echo "/users/yushua/env/ *(rw,no_all_squash)" > /etc/exports
sudo service rpcbind restart
sudo service nfs restart
sudo exportfs -rv

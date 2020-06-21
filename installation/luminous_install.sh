#!/bin/bash
sudo yum clean all
sudo rm -rf /etc/yum.repos.d/*.repo
sudo wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
sudo wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
sudo sed -i '/aliyuncs/d' /etc/yum.repos.d/CentOS-Base.repo
sudo sed -i '/aliyuncs/d' /etc/yum.repos.d/epel.repo

sudo echo [ceph] > /etc/yum.repos.d/ceph.repo
sudo echo name=ceph >> /etc/yum.repos.d/ceph.repo
sudo echo baseurl=http://mirrors.aliyun.com/ceph/rpm-luminous/el7/x86_64/ >> /etc/yum.repos.d/ceph.repo
sudo echo gpgcheck=0 >> /etc/yum.repos.d/ceph.repo
sudo echo [ceph-noarch] >> /etc/yum.repos.d/ceph.repo
sudo echo name=cephnoarch >> /etc/yum.repos.d/ceph.repo
sudo echo baseurl=http://mirrors.aliyun.com/ceph/rpm-luminous/el7/noarch/ >> /etc/yum.repos.d/ceph.repo
sudo echo gpgcheck=0 >> /etc/yum.repos.d/ceph.repo

sudo yum makecache
sudo yum install ceph -y


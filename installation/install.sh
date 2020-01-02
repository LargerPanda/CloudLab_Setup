#!/bin/bash
#sudo apt update -y
#sudo DEBIAN_FRONTEND=noninteractive apt -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade 
#sudo apt install -y wget curl axel ruby python python3 fish build-essential cmake gcc python-setuptools software-properties-common xz-utils 
sudo yum groups mark install "Development Tools"
sudo yum groups mark convert "Development Tools"
sudo yum -y groupinstall "Development Tools"
sudo yum -y install libattr-devel
sudo yum -y install libacl*
sudo yum -y install userspace-rcu-devel
sudo yum -y remove libtirpc-devel
sudo yum -y install libuuid-devel
sudo yum -y install libxml2-devel

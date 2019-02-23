#!/bin/bash

sudo apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade 
sudo apt install -y wget curl axel ruby python python3 fish build-essential cmake gcc python-setuptools software-properties-common xz-utils 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

#echo "fish" >> ~/.profile
FISH_PROC=`which fish`


curl -L http://get.oh-my.fish > installomf
fish installomf --noninteractive
rm -rf installomf
echo "omf install cbjohnson" | fish

chsh -s $FISH_PROC

fish

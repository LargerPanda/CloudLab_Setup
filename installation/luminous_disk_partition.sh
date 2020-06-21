#!/bin/bash

sudo yum -y install gdisk
sudo /sbin/sgdisk --new=1:0:+100G --mbrtogpt -- /dev/sdc
sudo /sbin/sgdisk --new=2:0:+100G --mbrtogpt -- /dev/sdc
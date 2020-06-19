#!/bin/bash
rbd create rbd_data/myrbd1 --size 500G
rbd feature disable rbd_data/myrbd1  exclusive-lock, object-map, fast-diff, deep-flatten
sudo rbd map rbd_data/myrbd1
sudo mkfs.xfs /dev/rbd0
mkdir cephrbd
sudo mount /dev/rbd0 cephrbd/

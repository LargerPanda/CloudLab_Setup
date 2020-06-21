#!/bin/bash
sudo rbd map ecmeta/myrbd1   ##这一步的输出结果是dev/rbd0
mkdir /users/yushua/cephrbd
sudo mount /dev/rbd0 /users/yushua/cephrbd
sudo chown -R yushua /users/yushua/cephrbd

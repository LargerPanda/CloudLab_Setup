#!/bin/bash
cd /users/yushua/env/hiredis/; sudo make install
sudo sh -c 'echo /usr/local/lib >> /etc/ld.so.conf'
sudo ldconfig

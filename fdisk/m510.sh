#!/bin/bash

echo "======= NOTICE: NO NEED TO PARTITION, JUST FORMAT AND MOUNT. ========"
TGTDEV="nvme0n1p4"
bash /local/repository/fdisk/formatNmount.sh $TGTDEV
df -h

echo "======= NOTICE: YOU ARE ALL SET!!!!! ========"

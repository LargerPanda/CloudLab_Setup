#!/bin/bash
ceph osd erasure-code-profile set ecprofile crush-failure-domain=osd k=2 m=1
ceph osd erasure-code-profile get ecprofile
ceph osd pool create ecdata 128 128 erasure ecprofile
echo object1 > inobj1
rados put -p ecdata object1 inobj1
rados -p ecdata ls
ceph osd map ecdata object1

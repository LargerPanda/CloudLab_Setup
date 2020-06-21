echo [ceph] > ceph.repo
echo name=ceph >> ceph.repo
echo baseurl=http://mirrors.aliyun.com/ceph/rpm-luminous/el7/x86_64/ >> ceph.repo
echo gpgcheck=0 >> ceph.repo
echo [ceph-noarch] >> ceph.repo
echo name=cephnoarch >> ceph.repo
echo baseurl=http://mirrors.aliyun.com/ceph/rpm-luminous/el7/noarch/ >> ceph.repo
echo gpgcheck=0 >> ceph.repo


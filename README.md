# CloudLab_Setup

## Initiate Head Node

```
./Utils.sh <# of nodes> HOSTS
```

## Mutural Access is essential

```
bash /proj/cloudincr-PG0/setup/CloudLab_Setup/mutual_access/mutual_access.sh
./Utils.sh <# of nodes> PUT ~/.ssh/id_*sa ~/.ssh/
```
## Increase the file limit

```
./Utils.sh <# of nodes> LIMIT
```

## Install basic software

```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/install.sh"
```

## Create More Valid Partition

* For `m400` Machines:
```
./Utils.sh <# of nodes> TTY "sudo bash /proj/cloudincr-PG0/setup/CloudLab_Setup/fdisk/m400.sh sda"
```

   * Note: The m400 machine will reboot after new partition is created. You should login the head machine after it is rebooted and do the following :
```
./Utils.sh <# of nodes> TTY "sudo bash /proj/cloudincr-PG0/setup/CloudLab_Setup/fdisk/formatNmount.sh sda2"
```

* For `r320` Machine:
```
./Utils.sh <# of nodes> TTY "sudo bash /proj/cloudincr-PG0/setup/CloudLab_Setup/fdisk/r320.sh sdb"
./Utils.sh <# of nodes> TTY "sudo bash /proj/cloudincr-PG0/setup/CloudLab_Setup/fdisk/formatNmount.sh sdb1"
```

## Reboot the nodes:
```
./Utils.sh <# of nodes> TTY "sudo shutdown -r now"
```

## Checking the ulimit:
```
./Utils.sh <# of nodes> TTY "ulimit -a"
```

## Checking Disk Partitioning Result:
```
./Utils.sh <# of nodes> TTY "df -h | grep /data ; ls -l /data | grep 'software'"
```

## Installing Java
```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/java.sh"
```

## Installing NodeJS
```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/node.sh <armv6l|armv7l|arm64|x86|x64>"
```

## Installing Redis
```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/redis.sh"
```

## Installing MySQL
```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/mysql.sh"
```

## Installing METIS (stay tuned)
```
./Utils.sh <# of nodes> TTY "bash /proj/cloudincr-PG0/setup/CloudLab_Setup/installation/metis.sh"
```

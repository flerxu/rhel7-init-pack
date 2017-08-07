#!/bin/sh
if [ -d /etc/chrony.conf ]
then
    systemctl stop chronyd
    sed -i 's/^server/#server/g' /etc/chrony.conf
    echo "server 172.17.25.2 iburst"
    ntpdate 172.17.25.2
    hwclock -w
    systemctl start chronyd
fi



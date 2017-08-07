#!/bin/sh

chmod +r /var/log/messages	
chmod +r /var/log/boot.log
if [ -f /etc/cluster/cluster.conf ]
then
    chmod +r /etc/cluster.conf
fi


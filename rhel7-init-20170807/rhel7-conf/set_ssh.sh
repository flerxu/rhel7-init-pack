#!/bin/sh 

# Disable use dns in ssh
if grep -q ^UseDNS /etc/ssh/sshd_config
then
    sed -i "s/UseDNS.*/UseDNS no/g" /etc/ssh/sshd_config
else
    echo "UseDNS no" >> /etc/ssh/sshd_config 
fi 

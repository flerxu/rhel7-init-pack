#!/bin/sh

echo "*.*  @172.17.55.24" > /etc/rsyslog.conf
systemctl restart rsyslog

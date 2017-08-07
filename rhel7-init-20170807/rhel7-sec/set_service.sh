#!/bin/sh

# Disable these service\socket\target
systemctl disable cpus.service           > /dev/null
systemctl disable firewalld.service      > /dev/null
systemctl disable NetworkManager.service > /dev/null
systemctl disable postfix.service        > /dev/null
systemctl disable auditd.service         > /dev/null
systemctl disable postfix.service        > /dev/null
systemctl disable rpcgssd.service        > /dev/null
systemctl disable rpcidmapd.service      > /dev/null
systemctl disable rpcsvcgssd.service     > /dev/null
systemctl disable nfslock.service        > /dev/null
systemctl disable vsftpd.service         > /dev/null
systemctl disable rpcbind.socket         > /dev/null
systemctl disable iscsid.socket          > /dev/null
systemctl disable remote-fs.target       > /dev/null
chkconfig  rhnsd  off                    > /dev/null

# Enable these service\socket\target
systemctl enable crond.service         > /dev/null
systemctl enable chronyd.service       > /dev/null
systemctl enable multipathd.service    > /dev/null
systemctl enable rsyslog.service       > /dev/null
systemctl enable sysstat.service       > /dev/null
systemctl enable smartd.service        > /dev/null

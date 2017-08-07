#!/bin/sh
# Set runlevel to 3
systemctl set-default multi-user.target

# Disable Ctrl+Alt+Del combination
systemctl mask ctrl-alt-del.target

# Change banner info
echo "Welcome to server \!"  > /etc/issue
echo "Welcome to server \!"  > /etc/issue.net

# Disable zeroconf network
echo "NOZEROCONF=yes" > /etc/sysconfig/network

# Set idle time to 10 minutes
echo "export TMOUT=600" > /etc/profile.d/nxyprofile.sh
chmod 644 /etc/profile.d/nxyprofile.sh

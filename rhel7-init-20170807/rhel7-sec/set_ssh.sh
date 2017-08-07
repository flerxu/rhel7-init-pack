#!/bin/sh

# Allow only SSH Protocol 2
if grep -q ^Protocol /etc/ssh/sshd_config
then
    sed -i "s/Protocol.*/Protocol 2/g" /etc/ssh/sshd_config
else
    echo "Protocol 2" >> /etc/ssh/sshd_config
fi
    
# Set client idle interval to 10 minutes
if grep -q ^ClientAliveInterval /etc/ssh/sshd_config
then
    sed -i "s/ClientAliveInterval.*/ClientAliveInterval 600/g" /etc/ssh/sshd_config
else
    echo "ClientAliveInterval 600" >> /etc/ssh/sshd_config
fi

# Disallow empty passworld login 
if grep -q ^PermitEmptyPasswords /etc/ssh/sshd_config
then
    sed -i "s/PermitEmptyPasswords.*/PermitEmptyPasswords no/g" /etc/ssh/sshd_config
else
    echo "PermitEmptyPasswords no" >> /etc/ssh/sshd_config
fi
    
# Disable rhosts
if grep -q ^IgnoreRhosts /etc/ssh/sshd_config
then
    sed -i "s/IgnoreRhosts.*/IgnoreRhosts yes/g" /etc/ssh/sshd_config
else
    echo "IgnoreRhosts yes" >> /etc/ssh/sshd_config
fi    

# Disallow empty passworld login 
if grep -q ^PermitUserEnvironment /etc/ssh/sshd_config
then
    sed -i "s/PermitUserEnvironment.*/PermitUserEnvironment no/g" /etc/ssh/sshd_config
else
    echo "PermitUserEnvironment no" >> /etc/ssh/sshd_config   
fi
    
# Use Only FIPS 140-2 Validated Ciphers
echo "Ciphers aes128-ctr,aes192-ctr,aes256-ctr"  >> /etc/ssh/sshd_config

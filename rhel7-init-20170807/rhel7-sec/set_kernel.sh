# This script sets kernel parameters. Every part consist of two sections, the first section sets runtime and the second set permanent configuration.

# Backing up sysctl.conf
cp /etc/sysctl.conf /etc/sysctl-$(date +%Y%m%d%H%M)

# Read from item file 
for var in $(cat kernel-parameter-0.txt)
do
    sysctl -q -n -w $var=0
    if grep -q "^$var" /etc/sysctl.conf
    then
        sed -i "s/^$var.*/$var = 0/g" /etc/sysctl.conf
    else
        echo "$var = 0" >> /etc/sysctl.conf
    fi
done


for var in $(cat kernel-parameter-1.txt)
do
    sysctl -q -n -w $var=1
    if grep -q "^$var" /etc/sysctl.conf
    then
        sed -i "s/^$var.*/$var = 1/g" /etc/sysctl.conf
    else
        echo "$var = 1" >> /etc/sysctl.conf
    fi
done


# Set value for kernel.randomize_va_space
sysctl -q -n -w kernel.randomize_va_space=2

if grep -q '^kernel.randomize_va_space' /etc/sysctl.conf ; then
    sed -i 's/^kernel.randomize_va_space.*/kernel.randomize_va_space = 2/g' /etc/sysctl.conf
else
    echo "kernel.randomize_va_space = 2" >> /etc/sysctl.conf
fi



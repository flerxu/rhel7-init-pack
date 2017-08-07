#!/bin/sh
echo "*****************************************************"
echo "We are going to get the system configured in 10s....."
echo "Press Ctrl+C to cancel the task \!"
echo "*****************************************************"
sleep 10

echo "Now working in $PWD/rhel7-sec/"
echo "-----------------------------------------------------"
for i in $PWD/rhel7-sec/*.sh
do
   echo "Running $(basename $i) ..... "
   sh $i 
   echo "----------------------------------------------------"
done

echo "*****************************************************"
echo "Now woring in $PWD/rhel7-sec/"
echo "----------------------------------------------------"
for j in $PWD/rhel7-conf/*.sh
do
   echo "Running $(basename $j) ..... "
   sh $j 
   echo "----------------------------------------------------"
done


echo "*****************************************************"
echo "Done, be sure to have a clean reboot!"
echo "*****************************************************"

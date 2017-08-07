#/bin/sh

# Modify /etc/bashrc and /etc/profile and get umask set.

if [ -f /etc/profile ] && [ -f /etc/bashrc ]
then

	# Calculate the count of useful lines which contain string 'umask 027'
	count1=$( grep umask /etc/profile | grep -v \# | grep -c 027 )
	count2=$( grep umask /etc/bashrc | grep -v \# | grep -c 027 )

	if [ $count1 -eq 2 ] && [ $count2 -eq 2 ] 
	then
		echo "Umask is 027 already, no need to change!"
		exit
	else
        # backup profile and bashrc,get umask set.
		echo "Back up and set umask......"
		sleep 1
		cp /etc/profile /etc/profile-$(date +%Y%m%d%H%M)
		cp /etc/bashrc /etc/bashrc-$(date +%Y%m%d%H%M)
		sed -i 's/umask.*/umask 027/g' /etc/bashrc
		sed -i 's/umask.*/umask 027/g' /etc/profile
	fi
   
else
   echo "Check if /etc/profile or /etc/bashrc exist!"
fi


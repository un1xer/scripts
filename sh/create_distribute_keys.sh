#!/bin/bash

#
# James Balliet 02/03/2015  V 1.0
#

# CREATE AUTHORIZED KEYS FILE IF NOT EXIST...
if [ ! -f authorized_keys ] 
then 
	# CREATE THE FILE...
	touch ~/authorized_keys

	# ADD ROOT PUB KEY TO AUTH KEY FILE
	cat ~/.ssh/id_rsa.pub > ~/authorized_keys

	# CORRECT PERMISSIONS
	chmod 600 ~/authorized_keys
fi


# DO SOME STUFF ON REMOTE HOSTS...
for i in `cat hostlist`; do
	
	# DOES THE RSA KEY EXIST...
	if ! ssh $i test -e ~/.ssh/id_rsa; 
	then
		ssh $i 'cd ~/.ssh/; ssh-keygen -N "" -C "$HOSTNAME" -t rsa -f id_rsa'
	fi

	# COPY REMOTE PUB KEY TO LOCAL...
	scp $i:~/.ssh/id_rsa.pub ~/
	
	# APPEND PUB KEY TO AUTHORIZED KEY FILE...
	cat ~/id_rsa.pub >> ~/authorized_keys

done


# PUSH MASTER AUTHORIZED KEYS FILE TO HOSTS...
for i in `cat hostlist`; do

	scp ~/authorized_keys $i:/root/.ssh/
	scp ~/.ssh/known_hosts $i:/root/.ssh/
done

# CLEAN UP AND BACKUP...
tar cvf authorized_keys.tar authorized_keys
mv authorized_keys.tar backups/
rm authorized_keys
rm id_rsa.pub

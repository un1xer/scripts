#!/bin/bash


for i in `cat hostsfile`; do

	# GET HOSTNAME...
	 HSTNM=$(echo $i | cut -f 2 -d ':')

	echo $HSTNM > ~/hostname
	chmod 644 ~/hostname
	scp ~/hostname $HSTNM:/etc/

done


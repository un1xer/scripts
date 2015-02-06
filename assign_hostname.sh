#!/bin/bash


for i in `cat hostsfile`; do

	# GET IP ADDESS...	
	IPADD=$(echo $i | cut -f 2 -d ':';)

	# GET HOSTNAME...
	HSTNM=$(echo $i | cut -f 1 -d ':';)

	ssh $IPADD "echo $HSTM > /etc/hostname";
	
	ssh $IPADD "shutdown -r now";

done


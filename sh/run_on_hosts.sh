#!/bin/bash


if [ "$#" -ne 1 ]
then
	echo "Usage: ssh_run_using_hostlist.sh <hostlist_to_read_from> <"Commands_to_run_on_remote_host">"
	exit 1
fi

LIST=$1
COMRUN=$2


for i in `cat $LIST`; do 

	ssh $i $COMRUN; 
done

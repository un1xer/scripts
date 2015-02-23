#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: scp_to_hosts.sh <hostfile> <file2copy> <pathondesthost>"
	exit 1
fi

HOSTLIST=$1
FILE2COPY=$2
THEPATH=$3

for i in `cat $HOSTLIST`; do 

	scp $FILE2COPY $i:$THEPATH  
done

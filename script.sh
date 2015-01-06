#!/bin/bash

SEARCHSTRING=$1
TEXTFILE=$2
NOAWK=$3

if [[ $NOAWK == 1 ]]
then
	echo $TEXTFILE | grep -i $SEARCHSTRING
else
	grep $SEARCHSTRING $TEXTFILE | awk '{print $3}' 
fi

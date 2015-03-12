#!/bin/bash

file=$1
bucket=$2
subbucket=$3

if [ "$#" -eq 2 ]; then

	/usr/bin/s3cmd put $file s3://$bucket/

elif [ "$#" -eq 3 ]; then
	
	/usr/bin/s3cmd put $file s3://$bucket/$subbucket/
fi

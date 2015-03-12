#!/bin/bash

file=$1
bucket=$2
subbucket=$3

if [ "$#" -eq 0 ] || [ "$#" -eq 1 ]; then
        echo "USAGE: del_file_from_bucket.sh <file2delete> <bucketname> <sub-bucketname>"
        echo "OPTIONAL: <sub-bucketname> is optional"
        exit 1;
fi

if [ "$#" -eq 2 ]; then

	/usr/bin/s3cmd put $file s3://$bucket/

elif [ "$#" -eq 3 ]; then
	
	/usr/bin/s3cmd put $file s3://$bucket/$subbucket/
fi

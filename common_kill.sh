#!/bin/bash

if [ $# -eq 0 ]; then
	echo "USAGE: common_kill.sh <process>";
	exit 1
fi 

ps -aAdef | grep $1 | awk '{print $2}' > /tmp/holdmefornow.txt

for i in `cat /tmp/holdmefornow.txt`; do
	kill -9 $i
done

rm -rv /tmp/holdmefornow.txt

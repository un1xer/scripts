#!/bin/bash

cumulator=0
touch tmp.file

sudo lsof | awk '{print $7}' > tmp.file

for i in `cat tmp.file`; do

	if [[ ! "$i" =~ [a-zA-Z] ]]; then  
		echo "Worked: $i";
		((cumulator+=$i))
	fi
done

echo "TOTAL SPACE NEEDED $cumulator";

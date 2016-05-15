#!/bin/bash

echo "###############################"
echo -n "What task would you like to add:"

read todo

if [ `grep $todo todo.txt | wc -l` -eq 1 ]
then
	echo "This is already in your list"
else
	echo $todo >> todo.txt
fi

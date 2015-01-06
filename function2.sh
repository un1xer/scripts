#!/bin/bash

function numberofthings {

	i=1
	for f in $@; do
		echo $i: $f
		((i+=1))
	done
} 

numberofthings $(ls)

numberofthings a b c d e f g h i

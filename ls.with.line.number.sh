#!/bin/bash

# Add line number sequentially to ls output
function numberofthings {

	i=1
	for f in $@; do
		echo $i: $f
		((i+=1))
	done
} 

numberofthings $(ls)


#!/bin/bash
#
# Comparison Strings
#
# [[ $a < $b ]]  ( < > <= >= == != )
#
[[ "cat" == "cat" ]]
echo $?

[[ "cat" = "dog" ]]
echo $?


#
# Comparing Intagers
#
# [[ <int> <operator> <int> ]] (-lt,-gt,-le,-ge,-eq,-ne)
#
[[ 20 -lt 100 ]]  
echo $?

#
# Logic Operators
#
# [[ $a && $b ]  (&&,||,!)
#
# Is null? [[ -z $a ]]
# Is not null? [[ -n $a ]]
#
a=""
b="cat"
[[ -z $a && -n $b ]]
echo $?

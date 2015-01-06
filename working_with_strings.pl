#!/bin/bash
#
# Concatination
#
a="hello"
b="world"
c=$a$b
echo $c
#
# Parameter Expansion
#
echo ${#a}
echo ${#b}
echo ${#c}

d=${c:3}
echo $d

e=${c:3:4}
echo $e

#
# Replacing text in a string with other text...
# echo ${<nameofvariabletoworkwith>/<stingToReplace>/<NewString}
# // replaces all instances of the string (modifier
#  # replaces term if at the beginning of the string (modifier)
#  % replaces term if at the end of the string (modifier)
#
fruit="apple banana banana cherry"
echo ${fruit/banana/durian}
apple durian banana cherry


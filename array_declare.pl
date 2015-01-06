#!/bin/bash

declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo ${myarray["office building"]}
echo ${myarray["office building"]} is ${myarray[color]}

#!/bin/bash

# Make a backup to the ~/BACKUP folder, rename using epoch date and .bak

if [[ ! -e ~/BACKUP ]]; then
  mkdir ~/BACKUP
fi

cp $1 ~/BACKUP/$1.$(date +%s).bak
rm -rf $1 || sudo rm -rf $1

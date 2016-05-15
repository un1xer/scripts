#!/bin/bash

#  -F     Show Full output for inxi. Includes all Upper Case line letters, plus -s and -n.  
#         Does not show extra verbose options like -x -d -f -u -l -o -p -t -r unless you use that argument.

#  -x     Show Network card information, PCI BusID, and Port number.

#  -z     Adds security filters for IP addresses, Mac, and user home directory name. Default on for irc clients.

inxi -Fxz

#!/bin/bash
ftp <<- EndOfText

	open mirrors.xmission.com
	user anonymous
	ascii
	cd ubuntu/dists/lucid
	get Release
 	bye	
EndOfText

#!/bin/bash

if [ $# -eq 2 ]; then
	# check running
	process=$1
	message=$2
	count=3

	while [ $count -gt 0 ];
	do
		# se non viene mostrata tra i processi dell'utente, wc da' 0
		if [ $(ps -a | grep "$process" | wc -l ) -gt 0 ]; then
			# is running
			sleep 2
		else
			# is not running
        		echo "$message"
			count=$(expr $count '-' 1)
			sleep 1
		fi
	done

else
	echo "Provide all args!"
	echo "Correct usage: check_running process message"
fi

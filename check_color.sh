#!/bin/bash

if [ $# -eq 3 ]; then
	# 3 args
	if [ -f $1 ] && [ "$3" -eq "$3" ]; then 
		filename=$1
		color=$2
		ntimes=$3
		if [ $(cat $filename | grep $color | wc -w) == $ntimes ]; then
			#true
			echo "true"
		else
			#false
			echo "false"
		fi

	else
		echo "Please provide valid args."
		echo "Correct usage: check_color.sh filename color integer."
	fi
else
	echo "Please provide all args."
	echo "Correct usage: check_color.sh filename color integer."
fi


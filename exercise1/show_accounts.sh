#!/bin/bash

if [ $1 == "empty" ]; then
	echo "$(cat /etc/passwd)" 
else
	echo "do something"
fi

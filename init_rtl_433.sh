#!/bin/bash

# $1 = offset ppm

# Formatting variables
padding="echo"
newline="\n"

# Check for root
if [ "$EUID" -ne 0 ]
	then
		$padding
		echo "This script requires root."
		$padding
	exit
fi

sudo rtl_433 -c ./rtl_443.conf -p $1 ;\

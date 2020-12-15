#!/bin/bash

# $1 = offset ppm
# $2 = local port to send on

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

## Start rtl_433 with variable offset and port
#sudo rtl_433 -c ./rtl_443.conf -p $1 | netcat -lp $2 ;\

# Start rtl_433 with variable offset, no netcat
sudo rtl_433 -c ./rtl_443.conf -p $1 ;\

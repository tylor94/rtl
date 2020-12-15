#!/bin/bash

# $1 = offset ppm
# $2 = local port to send on

# Start rtl_adsb with variable offset and port
sudo rtl_adsb -p $1 | netcat -lp $2 ;\

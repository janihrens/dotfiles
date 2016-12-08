#!/bin/bash
# use utf8;



WIFI=$(nmcli -f ACTIVE,SSID,RATE,SIGNAL,BARS -t dev wifi | grep "^yes")
SSID=$(echo $WIFI | cut -d":" -f2)
RATE=$(echo $WIFI | cut -d":" -f3)
SIGNAL=$(echo $WIFI | cut -d":" -f4)
BARS=$(echo $WIFI | cut -d":" -f5)

# echo "hello"
echo "$BARS @ $SSID"
# print "$SIGNAL  $SSID"

# exit(0);

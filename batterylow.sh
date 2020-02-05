#!/bin/sh

PERCENT=`echo $(acpi) | awk  -F "," '{print $2}'`
STRLEN=`echo $PERCENT | wc -c`
BATTERY=`echo ${PERCENT:1:$STRLEN-2}`

a=1
b=3

if [ "$(($BATTERY))" -lt "30" ]; then
	#echo $BATTERY
	#echo $STRLEN
	(echo Header; echo "$BATTERY %" ; sleep 20) | dzen2 -y 150  -x 400 -w 300 -h 300 -fg purple
fi


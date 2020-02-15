#!/bin/sh

PERCENT=`echo $(acpi) | awk  -F "," '{print $2}'`
STRLEN=`echo $PERCENT | wc -c`
BATTERY=`echo ${PERCENT:1:$STRLEN-2}`
DISCHARGING="Discharging"
ACPI=`echo $(acpi)`

#(echo $ACPI)

if [ "$(($BATTERY))" -lt "30" ] && [[ $ACPI == *"$DISCHARGING"* ]]; then
	(echo Header; echo "$BATTERY %" ; sleep 20) | dzen2 -y 150  -x 400 -w 300 -h 300 -fg purple
fi

if [[ $ACPI != *"$DISCHARGING"* ]]; then
	(killall dzen2)
fi






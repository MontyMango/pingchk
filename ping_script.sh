#!/bin/bash

# Looks in the Hosts.txt
HOST_LIST=/home/localadmin/Documents/Hosts.txt
NOT_FOUND=/tmp/$$
DATE=$(date +%R-%m-%d-%Y)
RESULTS=Scan_Test_$DATE.txt

touch $RESULTS


$(echo date) > $RESULTS
echo "" >> $RESULTS
echo "" >> $RESULTS
echo "Found:" >> $RESULTS

for i in $(cat $HOST_LIST)
do
	# Variable searches in the host list line by line for a running computer
	HOST=$(host $i | grep "has address")
	echo $i
	
	# If the host is empty
	if [ -z "$HOST" ]
	then
		echo $i >> $NOT_FOUND
	
	# If the host is running
	else
		echo "$i | $HOST" >> $RESULTS
	fi
done



echo "" >> $RESULTS
echo "" >> $RESULTS
echo "Not Found:" >> $RESULTS
cat $NOT_FOUND >> $RESULTS

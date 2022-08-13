#!/bin/bash

# Looks in the Hosts.txt
HOST_LIST=$(pwd)/Hosts.txt
NOT_FOUND=/tmp/$$
FOUND=/tmp/$$1
DATE=$(date +%m-%d-%Y-%R)
RESULTS=Scan_Test_$DATE.txt

F_NUM=0
NF_NUM=0

echo $HOST_LIST
$("./sort_hosts.sh")

touch $RESULTS
touch $FOUND

$(echo date) > $RESULTS

for i in $(cat $HOST_LIST)
do
	# Variable searches in the host list line by line for a running computer
	HOST=$(host $i | grep "has address")
	echo "Pinging $i..."
	
	# If the host is empty
	if [ -z "$HOST" ]
	then
		echo $i >> $NOT_FOUND
		let "NF_NUM += 1"
	
	# If the host is running
	else
		echo -e "$i \t|\t$HOST" >> $FOUND
		let "F_NUM += 1"
	fi
	
done

# echos the found hosts
echo "" >> $RESULTS
echo "" >> $RESULTS
echo -e "Found / Online \t\t|\tTotal $F_NUM:" >> $RESULTS
cat $FOUND >> $RESULTS

# echos the offline hosts
echo "" >> $RESULTS
echo "" >> $RESULTS
echo -e "Not Found / Offline | Total $NF_NUM:" >> $RESULTS
cat $NOT_FOUND >> $RESULTS

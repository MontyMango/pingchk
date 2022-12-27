#!/bin/bash

# Before anything is done. Let's make sure that the results directory
# is up to date!
$(bash ./scripts/mk_results_dir.sh)

# Important file declarations
HOST_LIST=./Hosts.txt
LASTRUN=./Results.txt
SORT_METHOD=./scripts/sort_hosts.sh

# Stores hosts temporarily in your /tmp directory
NOT_FOUND=/tmp/$$
FOUND=/tmp/$$1

DATE=$(date +%R:%S)
MONTH=$(date +%B_%Y)
RESULTSDATE=$(date +%m-%d-%Y)
RESULTS=./results/$MONTH/$RESULTSDATE/$DATE.txt

# Counters
F_NUM=0
NF_NUM=0

# Sort the hosts before pinging the hosts
$(bash $SORT_METHOD)

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

# echos the found hosts to the Results file
echo "" >> $RESULTS
echo "" >> $RESULTS
echo -e "Found / Online \t\t|\tTotal $F_NUM:" >> $RESULTS
cat $FOUND >> $RESULTS

# echos the offline hosts to the Results file
echo "" >> $RESULTS
echo "" >> $RESULTS
echo -e "Not Found / Offline | Total $NF_NUM:" >> $RESULTS
cat $NOT_FOUND >> $RESULTS

# echos the files to the current results.txt
echo "Previous results can be found in the results directory" > $LASTRUN
echo "" >> $LASTRUN
cat $RESULTS >> $LASTRUN

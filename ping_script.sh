#!/bin/bash

# Looks in the Hosts.txt
LIST=/home/localadmin/Documents/Hosts.txt

$(echo date) > Hosts_Found.txt

for i in $(cat $LIST)
do
	echo $i
	echo $(host $i) | grep "has address" >> Hosts_Found.txt
done

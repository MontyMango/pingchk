#!/bin/bash
HOST_LIST=../Hosts.txt
TMP_LIST=/tmp/$$

# Stores sorted list to temp file, overwrites the host list with the temp file.
sort $HOST_LIST > $TMP_LIST
cat $TMP_LIST > $HOST_LIST

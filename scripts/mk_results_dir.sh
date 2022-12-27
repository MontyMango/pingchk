#!/bin/sh
# This file is responsible for the creations of the directories
# in /results/ .

DATE=$(date +%m-%d-%Y)
MONTH=$(date +%B_%Y)
RESULTS_DIR=./results/
RESULTS_MONTH=$RESULTS_DIR/$MONTH
RESULTSWITHDATE=$RESULTS_MONTH/$DATE

# If results directory doesn't exists, make a new one
if [ ! -r $RESULTS_DIR ]
then
	$(mkdir $RESULTS_DIR)
fi

# If the results with the current month & year doesn't exist, make a new month.
if [ ! -r $RESULTS_MONTH ]
then
	$(mkdir $RESULTS_MONTH)
fi

# If the results with the current date doesn't exist, make a directory.
if [ ! -r $RESULTSWITHDATE ]
then
	$(mkdir $RESULTSWITHDATE)
fi

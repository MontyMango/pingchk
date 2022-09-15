#!/bin/sh
RESULTS_DIR=./results/

# If results directory doesn't exists, make a new one
if [ ! -r $RESULTS_DIR ]
then
	$(mkdir $RESULTS_DIR)
fi

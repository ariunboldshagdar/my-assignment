#!/bin/bash
# save as test_me.sh
# Print out text 'This is TEST' with argument and 'This is NOT test' without argument 

if [ "$1" != "" ]; then
	echo "This is a TEST"
else
	echo "This is NOT a test"
fi

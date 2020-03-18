#!/bin/sh
# save as newer.sh 
# create three dummy file
# Find the newest file comparing the other 2 files. 

	touch -t 202003151800 foo
	touch -t 202003151801 goo
	touch -t 202003151802 hoo

file1=foo; 
file2=goo; 
file3=hoo;

if [ "$file1" -nt "$file2" ]
then
	if [ "$file1" -nt "$file3" ]
	then
		printf '%s\n' "$file1";
	else
		printf '%s\n' "$file3";
	fi
else
	if [ "$file2" -nt "$file3" ]
	then
		printf '%s\n' "$file2";
	else
		printf '%s\n' "$file3";
	fi
fi

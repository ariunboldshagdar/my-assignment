#!/bin/bash
# save as time-signal-md.sh - modified version
# gives a time signal every hour when connected to cron
# 3 second pause and 1 chime if 30>M>15
#                    2 chime if 45>M>30  
# 		     3 chime if 60>M>45

minutes=$(date +%M)
echo $minutes
if [[ $minutes > 15 ]] && [[ $minutes < 30 ]]
then
	for (( i=1; i<=1; i++))
	do
		echo -e "\a"
  		sleep 3 # sleep for three second
	done
fi
if [[ $minutes > 30 ]] && [[ $minutes < 45 ]]
then
        for (( i=1; i<=2; i++))
        do
                echo -e "\a"
                sleep 3 # sleep for three second
        done
fi
if [[ $minutes > 45 ]] && [[ $minutes < 60 ]]
then
        for (( i=1; i<=3; i++))
        do
                echo -e "\a"
                sleep 3 # sleep for three second 
        done
fi

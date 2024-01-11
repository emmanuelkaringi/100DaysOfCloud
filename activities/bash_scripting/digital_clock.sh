#!/bin/bash


# define color codes for red, green, and blue
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'

# start an infinite loop
while true
# mark the start of the loop body
do
	# clear the terminal screen
	clear
	# print the current time in green
	echo $Green $(date +%T) # get the current time
	# pause the script for 1 second
	sleep 1s

# end the loop body
done


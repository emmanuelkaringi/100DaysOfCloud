#!/bin/bash

#name="Evil Ben"

#echo "What is your name?"
#read name

#Positional argument/parameter
name=$1
#example: ./bestdayever.sh Stuart
compliment=$2
#example: ./bestdayever.sh Abby eyes

user=$(whoami)
date=$(date)
whereami=$(pwd)
privateIp=$(ip route get 1.2.3.4 | awk '{print $7}')
publicIp=$(curl ifconfig.me)
weather=$(curl wttr.in/Nyeri)
dadjoke=$()

echo "Good Morning $name!!"
sleep 1

echo "You are looking good today $name!!"
sleep 1

echo "You have the best $compliment I have ever seen $name"
sleep 3

echo "You are looged in as $user and you are currently at $whereami. The time and date is: $date"

echo "Your private IP Address is $privateIp and your public IP Address is $publicIp"

echo "The weather today is: "

echo "Here is your dad joke of the day: $dadjoke"

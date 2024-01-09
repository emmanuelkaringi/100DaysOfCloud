#!/bin/bash

#Conditionals
#echo "Hey, do you like coffee? (y/n)"
#read coffee

#if [[ $coffee == "y" ]]; then
#	echo "You're awesome"
#else
#	echo "Leave right now!!"
#fi



echo "Welcome Stuart. Please select your starting character (1-3)
1 - Samurai
2 - Prisoner
3 - Prophet"
read character

case $character in
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac
echo "You have chosen the $type character. Your HP is $hp and your attack is $attack."

#1st battle
beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0 and 1. (0/1)"
read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "Beast Vanguished!! Congrats fellow tarnished"
else
	echo "You Died"
	exit 1
fi
sleep 3

echo "Boss Battle. It's Margit. Pick a number between 0-9. (0-9)"
read tarnished

beast=$(( $RANDOM %10 ))
if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "Beast vanguished"
elif [[ $USER == "root" ]]; then
	echo "Root wins. Beast vanguished"
else
	echo "You died!"
	exit 1
fi

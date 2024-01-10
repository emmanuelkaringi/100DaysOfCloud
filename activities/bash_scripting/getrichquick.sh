#!/bin/bash

echo "What is your name?"
read name

echo "What is your age?"
read age

getrich=$((($RANDOM%10) + $age))
echo "Hello, $name, you are $age years old and you will be a millionare at $getrich years old."

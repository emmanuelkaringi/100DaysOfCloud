#!/bin/bash

#Read line by line the content in the file named hamlet
x=1

while read -r line; do
	echo "Line $x $line"
	(( x ++ ))
done < hamlet

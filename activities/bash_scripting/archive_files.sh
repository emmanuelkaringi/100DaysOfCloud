#!/bin/bash

# In the given directory, if you find files more than a given size (100MB) or files older than given days (100 days), compress those files and move in an archive folder.

#Steps to be taken
#1. Provide the path of directory
#2. Check if directory is present or not
#3. Create archive folder if not already present
#4. Find all the files with size more than 20MB
#5. Compress each file
#6. Move the compressed files in an archive folder
#7. Make a cron job to run the script every day at a given time

#1.
BASE=# Insert directory address here
DAYS=100
DEPTH=1
RUN=0

#2.
if [ ! -d $BASE ]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#3.
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#4.
for i in $(find $BASE -maxdepth $DEPTH -type f -size +20M)
do
	if [ $RUN -eq 0 ]
	then
	echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done

# display success message
echo "Archiving completed successfully!"
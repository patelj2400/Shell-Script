#!/bin/bash
#
# MetaData
# Name      : Jay Patel
# Date      : 09 Feb 2025
# Version   : V 1.0
# 
# This script is all about the achieve more than 10mb file archive everyday and those file 10day older
#

FILE_PATH="/home/jay/Log"
DAYS=10
DEPTH=1
RUN=0


#Check if the dir is present or not
if [ ! -d $FILE_PATH ]
then
    echo "Directory does not exist: $FILE_PATH"
    exit 1
fi

#Check if archive folder exist or not; if not exist then create it

if [ ! -d $FILE_PATH/archive ]
then
    echo "Archive dir is not exist so need to create it"
    mkdir $FILE_PATH/archive
fi

#Find the list of files are larger than 10MB

for i in `find "$FILE_PATH" -maxdepth "$DEPTH" -type f -size +60M`
do
    if [ "$RUN" -eq 0 ]; then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] Archiving $i ===> $FILE_PATH/archive"
        
        # Compress the file
        gzip -c "$i" > "$FILE_PATH/archive/$(basename "$i").gz" || exit 1

        # Remove original file only after successful compression
        rm -f "$i" || exit 1
    fi
done

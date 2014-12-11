#! /bin/bash
#
# cleanup_script.sh 12/6/2014
# -cron script to clean up data
#
echo "[$(date)] - Starting Cleanup"
BASEDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $BASEDIR	
DIR1=$BASEDIR/dir1
DIR2=$BASEDIR/dir2
# Determine When to Cleanup
FILE_LIMIT=1
# if the directory exists remove files
if [ -d "$DIR1" ]; then
        echo "[$(date)] - ...cleaning $DIR1"
        file_count=$(ls -1 $DIR1 | wc -l)
        if [ "$file_count" -ge "$FILE_LIMIT" ]; then
                rm -r $DIR1/*
                echo "[$(date)] - ...($file_count) files removed $file_count"
        else
                echo "[$(date)] - ...ignore cleanup because there are only ($file_count) files @"
        fi
fi

if [ -d "$DIR2" ]; then
        echo "[$(date)] - ...cleaning $DIR2"
        file_count=$(ls -1 $DIR2 | wc -l)
        if [ "$file_count" -ge "$FILE_LIMIT" ]; then
                rm -r $DIR2/*
                echo "[$(date)] - ...($file_count) files removed $file_count"
        else
                echo "[$(date)] - ...ignore cleanup because there are only ($file_count) files"
        fi
fi
echo "[$(date)] - Cleanup Complete"

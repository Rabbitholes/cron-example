#! /bin/bash
# 
# cron_example_builder.sh 12/6/2014
# -builds necessary test data/structure
#
echo "Creating Test Data/Structure"
BASEDIR=$(pwd)
DIR1=$BASEDIR/dir1
DIR2=$BASEDIR/dir2
LOGFILE=$BASEDIR/backup.log
LIMIT=3
# create the directory f it does not exist
if [ -d "$DIR1" ]; then
        echo "$DIR1 EXISTS"
else
        echo "...making $DIR1"
        mkdir $DIR1
fi
if [ -d "$DIR2" ]; then
        echo "$DIR2 EXISTS"
else
        echo "...making $DIR2"
        mkdir $DIR2
fi

for i in `seq 1 $LIMIT`;
do
	file1=$DIR1/file$i
	if [ ! -f '$file1' ]; then
	        touch $file1
	fi
	file2=$DIR2/file$i
	if [ ! -f '$file2' ]; then
	        touch $file2
	fi
done
touch $LOGFILE
echo "Created/Ensured Directories were created and $LIMIT files exist in each directory."


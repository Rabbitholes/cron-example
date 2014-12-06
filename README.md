cron-example
============

basic cron cleanup script example for linux 

high-level information --> https://help.ubuntu.com/community/CronHowto

# Introduction
1. **cron_example_builder.sh** - generates test directories and files
2. **cleanup_script.sh** - example code for removing files from a directory

# Assumptions
1. cron is installed.
2. understaning of file/directory permissions.

# Mission	
This code slice is intended to demonstrate using cron for cleaning up a directory of folders on some specific interval.

# How-To
1. git clone this repo
2. cd to the cron-example directory
3. run the example builder that will create direcotories and files
> bash cron_example_builder.sh
4. open up crontab *note: sudo opertations require sudo crontab which is seperate*
> crontab -e
5. specify the interval. we'll be using every minute for this example. *syntax = {interval} {job} > {output location}*
> * * * * * bash /home/cron-example/cleanup_script.sh > /home/cron-example/backup.log 2>&1
6. view the results by locating the "backup.log" file in the same directory *note: you can check cron execution at /var/log/syslog

# Next Steps
* This is a very custom solution with a minute interval. It should be altered to whatever frequency that is necessary. Additionally, in the link above you can view proper locations for hourly, daily, monthly.
* Also, logrotate is a tool that should be used to ensure that the log file doesn't get to large in the event of appending to the log.
*Lastly, this was done slapdash as a basic/common example for cron. Ideally some of the variables are seperated into a config file.

# Advanced
**placeholder for configuration version and logrotate or atleast a link to that branch.**
10 Good Lograte Example - http://www.thegeekstuff.com/2010/07/logrotate-examples/


Cheers, Matt
> 

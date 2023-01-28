#!/bin/bash
# Sample script written for linux
# This script is written by Santosh:
# -Hostname information:

cd /home/

function sysstat {
	echo -e "[***** HOSTNAME INFORMATION *****]"
	hostnamectl
	echo ""
	echo -e "[***** LINUX KERNEL VERSION *****]"
	uname -a
	echo ""
	#echo -e "[***** APACHE SERVER VERSION *****]"
	#apache2 -v
	#echo ""
	echo -e "[***** MYSQL VERSION *****]"
	mysql --version
	echo ""
	echo -e "[***** PHP VERSION *****]"
	php -v
	echo ""
	# -File system disk space usage:
	echo -e "[***** FILE SYSTEM DISK SPACE USAGE *****]"
	df -h
	echo ""
	# -Free and used memory in the system:
	echo -e "[***** FREE AND USED MEMORY *****]"
	free -m
	echo ""
	# -System uptime and load:
	echo -e "[***** SYSTEM UPTIME AND LOAD *****]"
	uptime
	echo ""	
	# -Logged-in users:
	echo -e "[***** CURRENTLY LOGGED-IN USERS *****]"
	who
	echo ""
	# -Top 5 processes as far as memory usage is concerned
	echo -e "[***** TOP 5 MEMORY-CONSUMING PROCESSES *****]"
	ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
	echo ""
	echo -e "[Done.]"
}

FILENAME=/home/"health-`hostname`-`date +%y%m%d`-`date +%H%M`.txt"
sysstat > $FILENAME

# Mail to admin@santoshbatulla.com
if [ $? -eq 0 ]
then
	php /var/www/html/healthtest.php
else
	php /var/www/html/healthtest.php
fi

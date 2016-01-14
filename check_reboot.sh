#!/bin/bash
#
# Uses an URL that provides a unix timestamp greather than now to reboot it. 
#
RESULT="`wget -qO- http://YOUR_URL_HERE`"
NOW=$(date +%s)
if [ $RESULT -gt $NOW ]
then
	sudo /sbin/shutdown -r now
fi

#!/bin/sh

THEDATE=`date +%d%m%y%H%M`

tar -czf /home/ozzy/backups/frontend_${THEDATE}.tar.gz /var/www/html/frontend

find /home/ozzy/backups/frontend* -mtime +1 -exec rm {} \;

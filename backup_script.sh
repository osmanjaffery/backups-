#!/bin/sh

#database information
THEDBUSER="root"
THEDBPW="steam"
DATE=`date +%m%d%y_%H%M`

#mysql table backup
mysqldump -u $THEDBUSER -p${THEDBPW} profile | gzip -9 > /home/ozzy/backups/backups_sql/steam${DATE}.sql.gz 

#back up the entire frontend folder
tar -czf /home/ozzy/backups/frontend/frontend_${DATE}.tar.gz --exclude ".git/*" /var/www/html/frontendFinal

#find will search and delete the old files
find /home/ozzy/backups/frontend/* -mtime +1 -exec rm {} \;

#back up monit conf files
tar -czf /home/ozzy/backups/monit/monit_${DATE}.tar.gz /etc/monit/conf.d


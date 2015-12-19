#!/bin/sh
THEDATE=`date +%m-%d-%y_%H:%M`

cd /home/ozzy/backups/
git add . 
git commit -am "Backup - ${THEDATE}"
git push git@github.com:osmanjaffery/backups-.git master

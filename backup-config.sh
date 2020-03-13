#!/bin/bash -e

## cat /etc/cron.d/backups 
#MAILTO=gabrieletassoni@autoserviceribani.it
## Sabato a mezzogiorno, inizia il full backup
#0 12 * * 6 root nice -n 10 /root/bin/script_full 
## Lun, Mar, Mer, Gio, Ven, alle 18, fai gli incrementali
#0 18 * * 1,2,3,4,5 root nice -n 10 /root/bin/script_incremental
## La domenica a mezzanotte, cancella i vecchi backup, obsoleti...
#59 23 * * 0 root nice -n 10 /root/bin/script_cleanup

REMOTE="rsync://rsync@192.168.121.105//volume1/NetBackup/gold"
EXCLUDES="--exclude=/proc --exclude=/sys  --exclude=/backups --exclude=/dev --exclude=/proc --exclude=/sys --exclude=/mnt --exclude=/media --exclude=/tmp --exclude=/var/spool --exclude=/var/cache --exclude=/var/tmp"
INCLUDES="--include=/root/bin --include=/etc/apache2/vhost --include=/etc/apache2/sites-enabled/ --include=/home/ --include=/var/vmail --include=/var/lib/samba --include=/root/sql-backup/"
/root/bin/backup_databases

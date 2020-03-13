#!/bin/bash

BACKUPDIR=$HOME/sql-backups

mkdir -p $BACKUPDIR
rm -f $BACKUPDIR/*
mysqldump --all-databases --single-transaction --quick --lock-tables=false > $BACKUPDIR/mysql-$(date +%F).sql -u root 
sudo -i -u postgres -- pg_dumpall > $BACKUPDIR/postgres-$(date +%F).out
exit 0

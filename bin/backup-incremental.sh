#!/bin/bash -e

source $HOME/bin/backup-config.sh
yad --notification --text="Duplicity Incr Backup: $REMOTE" &
duplicity incremental --volsize 25 $EXCLUDES $INCLUDES $HOME $REMOTE --no-encryption
killall yad
exit 0

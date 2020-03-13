#!/bin/bash -e

source $HOME/bin/backup-config.sh
yad --notification --text="Duplicity Full Backup: $REMOTE" &
duplicity full --volsize 25 $EXCLUDES $INCLUDES $HOME $REMOTE --no-encryption
killall yad
exit 0

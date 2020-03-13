#!/bin/bash

source $HOME/bin/backup-config.sh
yad --notification --text="Duplicity Status: $REMOTE" &
duplicity collection-status $REMOTE --no-encryption
killall yad
exit 0

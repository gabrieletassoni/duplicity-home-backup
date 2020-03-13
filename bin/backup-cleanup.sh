#!/bin/bash -e

source $HOME/bin/backup-config.sh
yad --notification --text="Duplicity Cleanup: $REMOTE" &
duplicity remove-older-than 1M --force $REMOTE --no-encryption
killall yad
exit 0

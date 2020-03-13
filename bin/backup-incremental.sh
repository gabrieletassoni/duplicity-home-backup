#!/bin/bash -e

source $HOME/bin/backup-config.sh
duplicity incremental --volsize 25 $EXCLUDES $INCLUDES $HOME $REMOTE --no-encryption
exit 0

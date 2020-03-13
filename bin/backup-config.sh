#!/bin/bash -e

RSYNCUSER="rsync"
RSYNCADDR="<YOUR-NAS-IP-HERE>"
RSYNCDIR="/volume1/NetBackup/$USER"

# ------------ CHANGE NOTHING BELOW THIS LINE ----------------------------

RSYNCCONNECTION="$RSYNCUSER@$RSYNCADDR"
ssh $RSYNCCONNECTION "mkdir -p $RSYNCDIR"

REMOTE="rsync://$RSYNCCONNECTION/$RSYNCDIR"
EXCLUDES="--exclude-filelist $HOME/bin/homedir-excludes.conf"
INCLUDES=""

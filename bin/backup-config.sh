#!/bin/bash -e

RSYNCUSER="rsync"
RSYNCURL="192.168.121.105"
RSYNCCONNECTION="$RSYNCUSER@$RSYNCURL"
RSYNCDIR="/volume1/NetBackup/$USER"

ssh $RSYNCCONNECTION "mkdir -p $RSYNCDIR"

REMOTE="rsync://$RSYNCCONNECTION/$RSYNCDIR"
EXCLUDES="--exclude-filelist $HOME/bin/homedir-excludes.conf"
INCLUDES=""

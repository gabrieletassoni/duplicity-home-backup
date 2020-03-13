#!/bin/bash -e

REMOTE="rsync://rsync@192.168.121.11//volume1/NetBackup/$USER"
EXCLUDES="--exclude-filelist $HOME/bin/homedir-excludes.conf"
INCLUDES=""

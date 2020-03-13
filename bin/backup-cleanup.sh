#!/bin/bash -e

source $HOME/bin/backup-config.sh
duplicity remove-older-than 2M --force $REMOTE --no-encryption
exit 0

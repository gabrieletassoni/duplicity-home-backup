#!/bin/bash -e

source $HOME/bin/backup-config.sh
duplicity remove-older-than 1M --force $REMOTE --no-encryption
exit 0

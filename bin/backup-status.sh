#!/bin/bash

source $HOME/bin/backup-config.sh
duplicity collection-status $REMOTE --no-encryption
exit 0

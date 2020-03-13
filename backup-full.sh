#!/bin/bash -e

source ./backup-config.sh
duplicity full --volsize 25 $EXCLUDES $INCLUDES --exclude=/ / $REMOTE --no-encryption
exit 0

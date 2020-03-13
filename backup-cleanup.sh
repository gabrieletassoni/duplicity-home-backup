#!/bin/bash -e

source ./backup-config.sh
duplicity remove-older-than 2M --force $REMOTE --no-encryption
exit 0

#!/bin/bash

source ./backup-config.sh
duplicity collection-status $REMOTE --no-encryption
exit 0

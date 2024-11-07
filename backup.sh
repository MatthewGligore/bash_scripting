#!/bin/bash

# check for correct number of arguments
if [ $# -ne 2 ]; then
    echo "Usage: backup/sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# check if rsync is installed
# send the output of standard output and standard error to /dev/null
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again"
    exit 2
fi

# store the current date in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# archive mode | verbose (shows output) | do not replace files
# --backup-dir | copy the backup file to the usr argument in a
# directory of current date
# then --dry-run will actually test (remove if in production)
rsync_options="-avb --backup-dir $2/$current_date --delete"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log

#!/usr/bin/env bash
# Backing up required files

LOGFILE="/home/$USER/log_file"
BACKUP_LOC="/usr/bin/*"
BACKUP_TARGET="/home/$USER/backup"

echo "Creating backup directory" && mkdir $BACKUP_TARGET 2> /dev/null || echo "Directory already exists."

echo "Copying Files" $$ cp -v $BACKUP_LOC $BACKUP_TARGET > LOGFILE 2>&1

grep -i denied $LOGFILE | tail -n 2

exit 127

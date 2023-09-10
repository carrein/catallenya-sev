#! /usr/bin/bash

. /etc/restic/restic-config

echo "Starting restic restore with the following configs:"
cat /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose restore latest --target ${RESTIC_RESTORE_TARGET} --password-file /etc/restic/restic-password

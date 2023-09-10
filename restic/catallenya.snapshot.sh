#! /usr/bin/bash

. /etc/restic/restic-config

echo "Checking restic snapshots with the following configs:"
cat /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose snapshots --password-file /etc/restic/restic-password

#! /usr/bin/bash

. /etc/restic/restic-config

echo "Removing stale restic snapshots with the following configs:"
cat /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --password-file /etc/restic/restic-password --verbose forget --keep-daily ${RESTIC_NUMBER_DAILY_TO_KEEP} --keep-weekly ${RESTIC_NUMBER_WEEKLY_TO_KEEP} --keep-monthly ${RESTIC_NUMBER_MONTHLY_TO_KEEP} --keep-yearly ${RESTIC_NUMBER_YEARLY_TO_KEEP} --prune

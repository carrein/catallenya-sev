#!/bin/bash

. /zpool/catallenya-sev/restic/restic.conf

# Backup target folders to repository.
restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose backup ${RESTIC_BACKUP_TARGETS} --password-file ${RESTIC_PASSWORD_FILE}
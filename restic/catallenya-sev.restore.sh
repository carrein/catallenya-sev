#! /usr/bin/bash

. /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose restore latest --target ${RESTIC_RESTORE_TARGET} --password-file ${RESTIC_PASSWORD_FILE}

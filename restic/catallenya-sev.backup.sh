#! /usr/bin/bash

. /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose backup ${RESTIC_BACKUP_TARGET} --password-file ${RESTIC_PASSWORD_FILE}
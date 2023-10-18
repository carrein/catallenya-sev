#! /usr/bin/bash

. /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --password-file ${RESTIC_PASSWORD_FILE} --verbose cache --cleanup